import "package:flutter/material.dart";

class ThemeClass {
  Color primaryColor = const Color(0xFF9370DB);
  Color blackColor = const Color(0xFF000000);
  Color backgroundColor = const Color(0xFFF8F8F8);
  Color accentColor = const Color(0xFF0007d4);
  Color greyColor = const Color(0xFFCECECE);
  Color whiteColor = const Color(0xFFFFFFFF);

  static ThemeData lightTheme = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
        primary: _themeClass.primaryColor,
        secondary: _themeClass.accentColor),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: _themeClass.greyColor,
    ),
  );
}

ThemeClass _themeClass = ThemeClass();