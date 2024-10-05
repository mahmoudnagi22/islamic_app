import 'package:flutter/material.dart';
import 'package:islami_app_r/core/utils/colors_manager.dart';

class MyTheme {
  static final ThemeData LigthTheme = ThemeData(
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
    ),
  );
}
