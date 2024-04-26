import 'package:flutter/material.dart';

class ThemeClass {
  // Définition des couleurs de la nouvelle palette
  static final Color lightGray = Color(0xFFD6D6D6); // Remplace 'primaryColor'
  static final Color vibrantYellow = Color(0xFFFFEE32); // Remplace 'accentColor'
  static final Color darkYellow = Color(0xFFFD100); // Ajouté pour le variant principal
  static final Color darkGray = Color(0xFF202020); // Remplace 'blackColor'
  static final Color darkerGray = Color(0xFF333533); // Ajouté comme couleur supplémentaire

  static final ThemeData lightTheme = ThemeData(
    primaryColor: vibrantYellow,
    scaffoldBackgroundColor: lightGray,
    appBarTheme: AppBarTheme(
      color: vibrantYellow,
      iconTheme: IconThemeData(color: darkGray),
    ),
    colorScheme: ColorScheme.light(
      primary: vibrantYellow,
      onPrimary: darkGray,
      secondary: darkYellow,
      onSecondary: lightGray,
      background: lightGray,
      onBackground: darkGray,
      surface: darkGray,
      onSurface: darkerGray,
      error: Colors.red.shade400,
      onError: lightGray,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: vibrantYellow,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: darkGray, fontSize: 24),
      bodyText1: TextStyle(color: darkGray, fontSize: 14),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: darkGray,
    scaffoldBackgroundColor: darkerGray,
    appBarTheme: AppBarTheme(
      color: darkGray,
      iconTheme: IconThemeData(color: lightGray),
    ),
    colorScheme: ColorScheme.dark(
      primary: darkGray,
      onPrimary: lightGray,
      secondary: vibrantYellow,
      onSecondary: darkYellow,
      background: darkerGray,
      onBackground: lightGray,
      surface: darkGray,
      onSurface: vibrantYellow,
      error: Colors.red.shade700,
      onError: darkerGray,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: darkGray,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: lightGray, fontSize: 24),
      bodyText1: TextStyle(color: lightGray, fontSize: 14),
    ),
  );
}
