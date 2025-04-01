import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_marketplace/constants.dart';
import 'package:nft_marketplace/nft_list.dart';
import 'package:nft_marketplace/nft_model.dart';
import 'package:nft_marketplace/screens/nft_card.dart';
import 'package:nft_marketplace/screens/nft_card2.dart';
import 'package:provider/provider.dart';

import '../nft_provider.dart';
import 'nft_provider_two.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  Color _containerColor = Colors.grey; // Initial color


  void _changeColor() {
    setState(() {
      _containerColor = _containerColor == Colors.grey ? Colors.blue : Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    final nftProvider = Provider.of<NFTProvider>(context);
    final nftProvider2 = Provider.of<NFTProviderTwo>(context);





    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 3),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(90),

                    border: Border.all(color: kStrokeColor, width: 1),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/eth_icon.svg'),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12.0,
                          right: 24,
                          top: 12,
                          bottom: 12,
                        ),
                        child: Text(
                          '90.02',
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SvgPicture.asset('assets/bi_bell.svg', width: 24, height: 24),
                const SizedBox(width: 10),
                SvgPicture.asset(
                  'assets/ion_settings.svg',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 12),
                Image.asset('assets/person.png'),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              'Explore the  Most \nPopular NFTs 🔥',
              style: GoogleFonts.spaceGrotesk(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),

            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: kGrey,
                // Background color
                hintText: "Enter NFT or Artist name",
                hintStyle: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                ),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                // Prefix Icon
                suffixIcon: Icon(Icons.mic_none, color: Colors.white),
                // Suffix Icon
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0), // Rounded edges
                  borderSide: BorderSide.none, // Removes default border
                ),
              ),
            ),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: _changeColor,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: Text(
                        'Trending',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: InkWell(
                    onTap: _changeColor,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: kGrey,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: Text(
                        'Popular',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),

                Expanded(
                  child: InkWell(
                    onTap: _changeColor,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: kGrey,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: Text(
                        'Following',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: nftProvider.nftList.length,
                      itemBuilder: (context, nftList) {
                        return NftCard(nft: nftProvider.nftList[nftList], index: nftList,);
                        // return Text("this is a card", style: TextStyle(color: Colors.white),);
                      },
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: ListView.builder(
                      itemCount: nftProvider2.nftList.length,
                      itemBuilder: (context, nftList) {
                        return NftCard2(nft: nftProvider2.nftList[nftList], index: nftList);
                        // return Text("this is a card", style: TextStyle(color: Colors.white),);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
