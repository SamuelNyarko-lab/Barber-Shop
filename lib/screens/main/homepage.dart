import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        leadingWidth: deviceWidth - 100,
        leading: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: AutoSizeText(
                    'S',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.manrope(
                      letterSpacing: 0.1,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Welcome',
                      textAlign: TextAlign.left,
                      maxFontSize: 18,
                      minFontSize: 18,
                      style: GoogleFonts.manrope(
                        letterSpacing: 0.1,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AutoSizeText(
                      'Samuel',
                      textAlign: TextAlign.left,
                      maxFontSize: 18,
                      minFontSize: 18,
                      style: GoogleFonts.manrope(
                        letterSpacing: 0.1,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.black54,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
            width: deviceWidth,
            height: deviceWidth,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.black,
                );
              },
            ),
          ),
          AutoSizeText(
            'Please enter the code sent to 00000000000',
            textAlign: TextAlign.center,
            maxFontSize: 18,
            minFontSize: 18,
            style: GoogleFonts.manrope(
              letterSpacing: 0.1,
              color: Colors.black,
              decoration: TextDecoration.none,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ]),
      ),
    );
  }
}
