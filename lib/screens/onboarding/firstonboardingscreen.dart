// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstOnboardingScreen extends StatelessWidget {
  const FirstOnboardingScreen({super.key});

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
                    'assets/images/Onboarding 1.jpg',
                  )),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
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
                            // fit: BoxFit.contain,
                            image: AssetImage(
                              'assets/images/logo.png',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: SizedBox(
                            height: 50,
                            width: deviceWidth - 80,
                            child: AutoSizeText(
                              'Let\'s beautify you',
                              // maxLines: 1,
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
                        ),
                        SizedBox(
                          width: deviceWidth - 80,
                          child: AutoSizeText(
                            'We specialize in haircut, hairlock, tattoo, manicure, pedicure nad earpiercing.',
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
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 100,
                            ),
                            child: CarouselIndicator(
                              count: 3,
                              index: 0,
                              height: 20,
                              cornerRadius: 70,
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                minWidth: deviceWidth / 2.5,
                                height: 60,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 1.5),
                                  borderRadius: BorderRadius.circular(
                                    15,
                                  ),
                                ),
                                child: AutoSizeText(
                                  'Skip',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.manrope(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, 'secondonboarding');
                                },
                                minWidth: deviceWidth / 2.5,
                                height: 60,
                                color: Color.fromRGBO(
                                  125,
                                  106,
                                  4,
                                  1,
                                ),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color.fromRGBO(
                                      125,
                                      106,
                                      4,
                                      1,
                                    ),
                                    style: BorderStyle.solid,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    15,
                                  ),
                                ),
                                child: AutoSizeText(
                                  'Next',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.manrope(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
