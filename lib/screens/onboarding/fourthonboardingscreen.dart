// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/pagewithbg.dart';

class FourthOnboardingScreen extends StatelessWidget {
  const FourthOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return PageWithBackground(
      assetImagePath: 'assets/images/Onboarding 4.jpg',
      imageopacity: 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            width: 150,
            child: Image(
              //   fit: BoxFit.contain,
              image: AssetImage(
                'assets/images/logo.png',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  minWidth: deviceWidth - 50,
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
                    'Login',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.manrope(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'signup');
                  },
                  minWidth: deviceWidth - 50,
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
                    'Sign up',
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
    );
  }
}
