import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightPrimary = Color(0xffB7935F);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color white = Color(0xffF8F8F8);
  static const Color black = Color(0xff242424);
  static const Color gold = Color(0xffB7935F);

  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 38,
        color: black,
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: lightPrimary,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
        selectedItemColor: black,
        unselectedItemColor: white,
        type: BottomNavigationBarType.fixed),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimary,
  );
}
