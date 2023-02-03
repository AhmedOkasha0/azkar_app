import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeScreen {
  static ThemeData LightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(18),
          topLeft: Radius.circular(18),
        ))),
    bottomAppBarColor: Colors.white,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.black,
      ),
      subtitle2: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      subtitle1: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      headline4: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: Color(0xffB7935F),
    dividerColor: Color(0xffB7935F),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),
  );
  static ThemeData darkTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ))),
      textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
          subtitle1: TextStyle(fontSize: 22, color: Colors.yellow),
          subtitle2: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
          headline4: TextStyle(fontSize: 18, color: Colors.black)),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: Color(0xff141A2E),
      dividerColor: Color(0xffFACC1D),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Color(0xffFACC1D),
        selectedIconTheme: IconThemeData(color: Color(0xffFACC1D)),
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      buttonBarTheme: ButtonBarThemeData());
}
