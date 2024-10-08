import 'package:flutter/material.dart';
import 'package:islami_app_r/core/utils/colors_manager.dart';

class MyTheme {
  static final ThemeData LigthTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: ColorsManager.goldeColor,
        primary: ColorsManager.goldeColor,
        secondary: ColorsManager.goldeColor),
    primaryColor: ColorsManager.goldeColor,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
          fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    cardTheme: CardTheme(
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: ColorsManager.bgColorQuranWidget,
      elevation: 20,
    ),
    dividerColor: ColorsManager.goldeColor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(size: 46),
      selectedItemColor: Colors.black,
      showSelectedLabels: true,
      elevation: 20,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      elevation: 20,
      backgroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      displaySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      labelSmall: TextStyle(
          fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
      bodyMedium: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: ColorsManager.goldeColor),
      headlineLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
    ),
  );

  static final ThemeData DarkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: ColorsManager.goldeColor,
        primary: ColorsManager.goldeColor,
        secondary: Colors.white),
    primaryColor: ColorsManager.darkBlue,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
          fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    cardTheme: CardTheme(
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: ColorsManager.darkBlue,
      elevation: 20,
    ),
    dividerColor: ColorsManager.yellowColor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(size: 46),
      selectedItemColor: ColorsManager.yellowColor,
      showSelectedLabels: true,
      elevation: 20,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      elevation: 20,
      backgroundColor: ColorsManager.darkBlue,
    ),
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontSize: 25,
        color: ColorsManager.yellowColor,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: ColorsManager.yellowColor,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: ColorsManager.yellowColor,
        fontWeight: FontWeight.w400,
      ),
      displaySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      labelSmall: TextStyle(
          fontSize: 18,
          color: ColorsManager.yellowColor,
          fontWeight: FontWeight.w700),
      bodyMedium: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: ColorsManager.yellowColor),
      headlineLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    ),
  );
}
