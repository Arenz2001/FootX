import 'package:flutter/material.dart';

class ThemeClass {
  // Base color palette
  static const Color ultraLightGray = Color(0xFFFDFDFD);
  static const Color lightGray = Color(0xFFF7F7F7);
  static const Color midGray = Color(0xFFE0E0E0);
  static const Color darkGray = Color(0xFF303030);
  static const Color offWhite = Color(0xFFFAFAFA);
  static const Color offBlack = Color(0xFF212121);
  static const Color fullBlack = Color(0xFF000000);
  static const Color linkColor = Color(0xFF1976D2);

  // Function to create base text theme with Urbanist font
  static TextTheme _buildTextTheme(TextTheme base, Color textColor) {
    return base.copyWith(
      headline1: base.headline1?.copyWith(fontFamily: 'Urbanist', color: textColor),
      headline2: base.headline2?.copyWith(fontFamily: 'Urbanist', color: textColor),
      headline3: base.headline3?.copyWith(fontFamily: 'Urbanist', color: textColor),
      headline4: base.headline4?.copyWith(fontFamily: 'Urbanist', color: textColor),
      headline5: base.headline5?.copyWith(fontFamily: 'Urbanist', color: textColor),
      headline6: base.headline6?.copyWith(fontFamily: 'Urbanist', color: textColor),
      subtitle1: base.subtitle1?.copyWith(fontFamily: 'Urbanist', color: textColor),
      subtitle2: base.subtitle2?.copyWith(fontFamily: 'Urbanist', color: textColor),
      bodyText1: base.bodyText1?.copyWith(fontFamily: 'Urbanist', color: textColor),
      bodyText2: base.bodyText2?.copyWith(fontFamily: 'Urbanist', color: textColor),
      button: base.button?.copyWith(fontFamily: 'Urbanist', color: textColor),
      caption: base.caption?.copyWith(fontFamily: 'Urbanist', color: textColor),
      overline: base.overline?.copyWith(fontFamily: 'Urbanist', color: textColor),
    );
  }

  // Theme data for light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: darkGray,
    scaffoldBackgroundColor: ultraLightGray,
    appBarTheme: AppBarTheme(
      color: ultraLightGray,
      elevation: 0,
      iconTheme: IconThemeData(color: offBlack),
      titleTextStyle: TextStyle(fontFamily: 'Urbanist', fontSize: 20, fontWeight: FontWeight.bold, color: offBlack),
    ),
    colorScheme: ColorScheme.light(
      primary: darkGray,
      onPrimary: offWhite,
      secondary: midGray,
      onSecondary: darkGray,
      background: ultraLightGray,
      onBackground: offBlack,
      surface: lightGray,
      onSurface: offBlack,
      error: Colors.red.shade400,
      onError: offWhite,
    ),
    textTheme: _buildTextTheme(ThemeData.light().textTheme, offBlack),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: offWhite,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: midGray, fontFamily: 'Urbanist'),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      buttonColor: darkGray,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(darkGray),
        foregroundColor: MaterialStateProperty.all(offWhite),
        textStyle: MaterialStateProperty.all(TextStyle(fontFamily: 'Urbanist', fontWeight: FontWeight.bold)),
      ),
    ),
  );

  // Theme data for dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: lightGray,
    scaffoldBackgroundColor: darkGray,
    appBarTheme: AppBarTheme(
      color: darkGray,
      elevation: 0,
      iconTheme: IconThemeData(color: offWhite),
      titleTextStyle: TextStyle(fontFamily: 'Urbanist', fontSize: 20, fontWeight: FontWeight.bold, color: offWhite),
    ),
    colorScheme: ColorScheme.dark(
      primary: lightGray,
      onPrimary: offBlack,
      secondary: midGray,
      onSecondary: lightGray,
      background: darkGray,
      onBackground: offWhite,
      surface: offBlack,
      onSurface: offWhite,
      error: Colors.red.shade700,
      onError: darkGray,
    ),
    textTheme: _buildTextTheme(ThemeData.dark().textTheme, offWhite),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: offBlack,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: midGray, fontFamily: 'Urbanist'),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      buttonColor: lightGray,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(lightGray),
        foregroundColor: MaterialStateProperty.all(offBlack),
        textStyle: MaterialStateProperty.all(TextStyle(fontFamily: 'Urbanist', fontWeight: FontWeight.bold)),
      ),
    ),
  );
}
