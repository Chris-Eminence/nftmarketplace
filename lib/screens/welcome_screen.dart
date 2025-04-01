import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_marketplace/constants.dart';
import 'package:nft_marketplace/screens/homepage.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(""),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Discover ',
              style: GoogleFonts.spaceGrotesk(fontSize: 45),
              children: [
                TextSpan(
                  text: 'Rare Collections',
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 45,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: ' \nof ',
                  style: GoogleFonts.spaceGrotesk(fontSize: 45),
                ),
                TextSpan(
                  text: 'NFTs',
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 45,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 382,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/welcome_image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 300,
                left: 50,
                right: 50,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, (MaterialPageRoute(builder: (context)=> Homepage())));
                  },
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: kLightGrey.withValues(alpha: 0.9),
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(""),
                        Text(
                          'Get Started',
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SvgPicture.asset('assets/arrow_w.svg', width: 50, height: 50,),
                      ],
                    ),
                  ),
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
