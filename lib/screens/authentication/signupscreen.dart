// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/pagewithbg.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController numbertextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return PageWithBackground(
      assetImagePath: 'assets/images/Onboarding 4.jpg',
      imageopacity: 0.5,
      child: SizedBox(
        height: deviceHeight,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
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
                    'Let\'s start',
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
                  'Enter your mobile number to Sign up',
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
                height: 30,
              ),
              Expanded(
                child: Container(
                  //height: deviceHeight - (deviceHeight / 2.7),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          30,
                        ),
                      )),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 20,
                  ),
                  child: SingleChildScrollView(
                    child: Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty || value.length > 13) {
                                return 'Not Accepted';
                              }
                              return null;
                            },
                            controller: numbertextEditingController,
                            cursorHeight: 25,
                            cursorColor: Color.fromRGBO(
                              125,
                              106,
                              4,
                              1,
                            ),
                            style: GoogleFonts.manrope(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,
                            minLines: 1,
                            decoration: InputDecoration(
                              errorStyle: GoogleFonts.manrope(
                                color: Colors.red,
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              label: AutoSizeText(
                                'Phone number',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.manrope(
                                  color: Colors.grey,
                                  decoration: TextDecoration.none,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              //fillColor: Colors.blue,

                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.5,
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                              ),

                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.5,
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.5,
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.5,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MaterialButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                Navigator.pushNamed(
                                    context, 'codeverification');
                              }
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
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: deviceWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: SizedBox(
                                    width: 100,
                                    child: Divider(
                                      color: Colors.black12,
                                      thickness: 1.5,
                                    ),
                                  ),
                                ),
                                AutoSizeText(
                                  'Or',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.manrope(
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: SizedBox(
                                    width: 100,
                                    child: Divider(
                                      color: Colors.black12,
                                      thickness: 1.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: deviceWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        style: BorderStyle.solid,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        15,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.facebook,
                                      color: Colors.blue,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        style: BorderStyle.solid,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        15,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.mail,
                                      color: Colors.red,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        style: BorderStyle.solid,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        15,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.apple,
                                      color: Colors.black,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: deviceWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  'Already have an account?',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.manrope(
                                    color: Colors.grey,
                                    decoration: TextDecoration.none,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, 'login');
                                  },
                                  child: Container(
                                    width: 80,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                    ),
                                    child: AutoSizeText(
                                      'Login',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.manrope(
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
