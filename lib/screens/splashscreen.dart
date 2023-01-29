// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: deviceHeight,
      width: deviceWidth,
      child: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.black45,
              height: deviceHeight,
              width: deviceWidth,
              child: const Image(
                  fit: BoxFit.fill,
                  opacity: AlwaysStoppedAnimation(
                    0.5,
                  ),
                  image: AssetImage(
                    'assets/images/splash.jpg',
                  )),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/images/logo.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: deviceWidth,
                        child: AutoSizeText(
                          'Solar Cutz & Style',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          maxFontSize: 35,
                          minFontSize: 35,
                          style: GoogleFonts.manrope(
                            letterSpacing: 0.1,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth,
                        child: AutoSizeText(
                          'Vintage style with modern cuts',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          maxFontSize: 18,
                          minFontSize: 18,
                          style: GoogleFonts.manrope(
                            letterSpacing: 0.1,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
