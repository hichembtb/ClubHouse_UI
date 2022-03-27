import 'package:clubhouse_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const ClubHouse());
}

class ClubHouse extends StatelessWidget {
  const ClubHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Club House',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: kBackGroundColor),
        scaffoldBackgroundColor: kBackGroundColor,
        primaryColor: Colors.white,
        accentColor: kAccentColor,
        iconTheme: const IconThemeData(color: Colors.black),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: const ClubHouseApp(),
    );
  }
}
