import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './const.dart';

ThemeData getTheme() {
  return ThemeData(
    textTheme: TextTheme(
      headline1: TextStyle(
        color: darkBrown,
        fontFamily: GoogleFonts.lacquer().fontFamily,
      ),
      headline2: TextStyle(
        color: darkBrown,
        fontFamily: GoogleFonts.lacquer().fontFamily,
      ),
      headline3: const TextStyle(color: darkBrown),
      headline4: const TextStyle(color: darkBrown),
      headline5: TextStyle(
        color: darkBrown,
        fontFamily: GoogleFonts.lacquer().fontFamily,
      ),
      headline6: const TextStyle(color: darkBrown),
      caption: const TextStyle(color: darkBrown),
      bodyText1: const TextStyle(color: darkBrown),
      subtitle1: const TextStyle(color: darkBrown),
      subtitle2: const TextStyle(color: darkBrown),
      bodyText2: const TextStyle(color: darkBrown),
      overline: const TextStyle(color: darkBrown),
      button: const TextStyle(color: darkBrown),
    ),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.brown),
      color: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      toolbarTextStyle: TextStyle(
        color: Colors.brown,
      ),
    ),
  );
}
