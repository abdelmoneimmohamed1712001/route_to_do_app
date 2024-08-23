import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF5D9CEC);
  static const Color scaffoldBgColor = Color(0xFFDFECDB);
  static const Color greyColor = Color(0xFFC8C9CB);
  static final ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        titleTextStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
      ),
      scaffoldBackgroundColor: scaffoldBgColor,
      canvasColor: Colors.white,
      bottomAppBarTheme: BottomAppBarTheme(

              shape: CircularNotchedRectangle()
              , elevation: 20),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: primaryColor,
          unselectedItemColor: greyColor,
          selectedIconTheme: IconThemeData(
            size: 28,
          )),
dividerColor: primaryColor,
    textTheme: TextTheme(
      labelSmall: TextStyle(fontSize:14, fontWeight: FontWeight.w400, color: primaryColor),
      labelMedium: TextStyle(fontSize:17, fontWeight: FontWeight.w700, color: Colors.black),
    )
  );
}
