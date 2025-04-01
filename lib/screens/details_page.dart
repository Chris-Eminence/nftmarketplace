import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_marketplace/nft_model.dart';

import '../constants.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.nft});

  final NFTDataModel nft;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nft.color,
      body: Stack(
        children: [
          Positioned(
            left: -360,
            top: 40,
            right: 3,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(nft.imageDetails!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset('assets/back.svg'),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('assets/dp.png'),
            ),
          ),

          Positioned(
            top: 200,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Text(nft.name!, style: GoogleFonts.spaceGrotesk(
              fontSize: 45, color: Colors.white, fontWeight: FontWeight.bold)),
              Text('#${nft.number!}', style: GoogleFonts.spaceGrotesk(
                  fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),),

          Positioned(
            top: 360,
            left: 20,

            child: Container(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              decoration: BoxDecoration(
                color: nft.color?.withValues(alpha: 0.7),
                borderRadius: BorderRadius.all(Radius.circular(90)),
              ),
              child: Column(
                children: [
                  SvgPicture.asset('assets/eth_icon.svg'),
                  Text(
                    '0.7',
                    style: GoogleFonts.spaceGrotesk(
                        fontWeight: FontWeight.w600,
                        fontSize: 45,
                        color: Colors.white
                    ),
                  ),
                  Text(
                    'Highest bid',
                    style: GoogleFonts.spaceGrotesk(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 360,
            right: 20,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  decoration: BoxDecoration(
                    color: nft.colorShades,
                    borderRadius: BorderRadius.all(Radius.circular(90)),
                  ),
                  child: Column(
                    children: [
                      Text(
                        nft.days!,
                        style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.w600,
                            fontSize: 23,
                            color: Colors.white
                        ),
                      ),
                      Text(
                        'Days',
                        style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  decoration: BoxDecoration(
                    color: nft.colorShades,
                    borderRadius: BorderRadius.all(Radius.circular(90)),
                  ),
                  child: Column(
                    children: [
                      Text(
                        nft.hours!,
                        style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.w600,
                            fontSize: 23,
                            color: Colors.white
                        ),
                      ),
                      Text(
                        'Hours',
                        style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  decoration: BoxDecoration(
                    color: nft.colorShades,
                    borderRadius: BorderRadius.all(Radius.circular(90)),
                  ),
                  child: Column(
                    children: [
                      Text(
                        nft.minutes!,
                        style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.w600,
                            fontSize: 23,
                            color: Colors.white
                        ),
                      ),
                      Text(
                        'Mins',
                        style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.white
                        ),
                      ),


                    ],
                  ),
                ),

                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  decoration: BoxDecoration(
                    color: nft.colorShades!.withValues(alpha: 0.8),
                    borderRadius: BorderRadius.all(Radius.circular(90)),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Owner',
                        style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.white
                        ),
                      ),
                      Image.asset('assets/dpdp.png'),
                      Row(
                        children: [
                          Text(
                            'Owner name ',
                            style: GoogleFonts.spaceGrotesk(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.white
                            ),
                          ),

                          Icon(Icons.verified, color: Colors.white, size: 14,)
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),

          Positioned(
              bottom: 20,
              left: 50,
              right: 50,
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: kLightGrey.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(""),
                      Text(
                        'Place Bid',
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/bidbid.svg', width: 50, height: 50,),
                    ],
                  ),
                ),
              )
          ),


        ],
      ),
    );
  }
}
