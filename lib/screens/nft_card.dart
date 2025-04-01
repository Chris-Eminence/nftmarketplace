import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_marketplace/constants.dart';
import 'package:nft_marketplace/nft_model.dart';
import 'package:nft_marketplace/screens/details_page.dart';
class NftCard extends StatelessWidget {
  const NftCard({super.key, this.nft, this.index});

  final NFTDataModel? nft;
  final int? index;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(nft: nft!),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 7.5),

        padding: EdgeInsets.all(15),
        height: 250,

        decoration: BoxDecoration(
          color: nft!.color,
          image: DecorationImage(
            image: AssetImage(nft!.image!),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  nft!.name!,
                  style: GoogleFonts.spaceGrotesk(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '#${nft!.number!}',
                  style: GoogleFonts.spaceGrotesk(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kGrey.withValues(alpha: 0.4)
                  ),
                  child: Text('Price ${nft!.price!}', style: GoogleFonts.spaceGrotesk(fontSize: 12, color: Colors.white),),
                )
              ],
            ),
            Spacer(),
            CircleAvatar(
                backgroundColor: Color(0xFFEDEDED),
                child: SvgPicture.asset('assets/bid.svg'))
          ],
        ),
      ),
    );
  }
}
