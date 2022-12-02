import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Colors.white;
  static ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: blackColor, unselectedItemColor: whiteColor),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: blackColor, fontSize: 30, fontWeight: FontWeight.bold),
      subtitle1: TextStyle(
          color: blackColor, fontSize: 25, fontWeight: FontWeight.w600),
      subtitle2: TextStyle(
          color: blackColor, fontSize: 25, fontWeight: FontWeight.w400),
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor)),
    primaryColor: primaryLight,
  );
  static ThemeData darkMode = ThemeData();
}
