// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/pagewithbg.dart';

class CodeVerificatioScreen extends StatelessWidget {
  CodeVerificatioScreen({super.key});
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController numbertextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return PageWithBackground(
      assetImagePath: 'assets/images/Onboarding 1.jpg',
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
                    'Code Verification',
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
                  'Please enter the code sent to 00000000000',
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
                    vertical: 30,
                  ),
                  child: SingleChildScrollView(
                    child: Form(
                      key: formkey,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Verifycodetextfield(
                                  deviceWidth: deviceWidth,
                                  numbertextEditingController:
                                      numbertextEditingController),
                              Verifycodetextfield(
                                  deviceWidth: deviceWidth,
                                  numbertextEditingController:
                                      numbertextEditingController),
                              Verifycodetextfield(
                                  deviceWidth: deviceWidth,
                                  numbertextEditingController:
                                      numbertextEditingController),
                              Verifycodetextfield(
                                  deviceWidth: deviceWidth,
                                  numbertextEditingController:
                                      numbertextEditingController),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MaterialButton(
                            onPressed: () {
                              // if (formkey.currentState!.validate()) {}

                              showVerifyDialog(
                                  context, deviceHeight, deviceWidth);
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
                              'Verify',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.manrope(
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: deviceWidth,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 80,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: AutoSizeText(
                                  'Resend code',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.manrope(
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
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

  Future<dynamic> showVerifyDialog(
      BuildContext context, double deviceHeight, double deviceWidth) {
    return showDialog(
        context: context,
        builder: ((context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              content: Container(
                height: deviceHeight / 2,
                width: deviceWidth / 1.2,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: deviceWidth / 1.2,
                      child: AutoSizeText(
                        'Code Sucessfully Verified',
                        textAlign: TextAlign.center,
                        maxFontSize: 20,
                        minFontSize: 20,
                        style: GoogleFonts.manrope(
                          letterSpacing: 0.1,
                          color: Color.fromRGBO(
                            125,
                            106,
                            4,
                            1,
                          ),
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                        width: deviceWidth / 1.2,
                        child: Icon(
                          Icons.safety_check,
                          size: deviceWidth / 2.5,
                          color: Colors.lightGreen,
                        )),
                    MaterialButton(
                      onPressed: () {
                          Navigator.pop(context); 
                          Navigator.pushNamed(
                              context, 'mainpage');
                        
                      },
                      minWidth: deviceWidth / 2,
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
              ),
            )));
  }
}

class Verifycodetextfield extends StatelessWidget {
  const Verifycodetextfield({
    super.key,
    required this.deviceWidth,
    required this.numbertextEditingController,
  });

  final double deviceWidth;
  final TextEditingController numbertextEditingController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: deviceWidth / 5,
      height: 80,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty || value.length > 1) {
            return 'Not Accepted';
          }
          return null;
        },
        controller: numbertextEditingController,
        showCursor: false,
        style: GoogleFonts.manrope(
          color: Colors.black,
          decoration: TextDecoration.none,
          fontSize: 35,
          fontWeight: FontWeight.w500,
        ),
        maxLines: 1,
        minLines: 1,
        decoration: InputDecoration(
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: Colors.grey,
          errorStyle: GoogleFonts.manrope(
            color: Colors.red,
            decoration: TextDecoration.none,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
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
    );
  }
}
