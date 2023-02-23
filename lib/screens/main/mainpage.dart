import 'package:barbershop/screens/main/bookingpage.dart';
import 'package:barbershop/screens/main/homepage.dart';
import 'package:barbershop/screens/main/profilepage.dart';
import 'package:barbershop/screens/main/stylistpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  List<Widget> _pages = const[
     HomePage(),
     StylishPage(),
     BookingPage(),
     ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SizedBox(height: 75.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BottomNavigationBar(
                onTap: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                currentIndex: selectedIndex,
                unselectedItemColor: Colors.black,
                selectedItemColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.white,
                showSelectedLabels: true,
                iconSize: 25,
                elevation: 10,
                showUnselectedLabels: true,
                selectedFontSize: 15.5,
                unselectedFontSize: 14.5,
                selectedIconTheme: const IconThemeData(size: 30),
                type: BottomNavigationBarType.fixed,
                unselectedLabelStyle: GoogleFonts.manrope(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  //fontSize: 14,
                  //fontSize: 13,
                ),
                selectedLabelStyle: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  // fontSize: 16,
                ),
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_filled,
                      ),
                      label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.book,
                      ),
                      label: 'Stylist'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        FontAwesomeIcons.book,
                        size: 21,
                      ),
                      label: 'Booking'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                      ),
                      label: 'Profile'),
                ]),
            const SizedBox(
              width: 80,
              child: Padding(
                padding: EdgeInsets.all(
                  2,
                ),
                child: Divider(
                  color: Colors.black,
                  height: 5,
                  thickness: 5,
                ),
              ),
            )
          ],
        ),
      ),
      body: _pages.elementAt(selectedIndex),
    );
  }
}
