// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:barbershop/widgets/loginbox.dart';
import 'package:barbershop/widgets/signupbox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController numbertextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        height: deviceHeight,
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
                    'assets/images/Onboarding 4.jpg',
                  )),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
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
                    padding: const EdgeInsets.only(top: 10.0),
                    child: SizedBox(
                      height: 50,
                      width: deviceWidth - 80,
                      child: AutoSizeText(
                        'Welcome back',
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
                    width: deviceWidth - 120,
                    child: AutoSizeText(
                      'Enter your login details',
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
                  SizedBox(
                    height: 20,
                  ),
                  LoginBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
