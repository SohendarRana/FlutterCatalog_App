import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blueGrey,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonColor: darkBluishColor,
      accentColor: darkBluishColor,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
          titleTextStyle: Theme.of(context).textTheme.headline6));

  static ThemeData DarkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      brightness: Brightness.dark,
      cardColor: Colors.black,
      canvasColor: DarkCreamColor,
      buttonColor: LightBluishColor,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
          titleTextStyle: Theme.of(context).textTheme.headline6));
  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color DarkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color LightBluishColor = Vx.indigo500;
}
