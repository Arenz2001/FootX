import 'package:flutter/material.dart';

class ThemeClass {
  // Base color palette simplifiée
  static const Color lightGray = Color(0xFFF7F7F7);
  static const Color darkGray = Color(0xFF303030);
  static const Color offWhite = Color(0xFFFAFAFA);
  static const Color offBlack = Color(0xFF212121);
  static const Color fullBlack = Color(0xFF000000);

  // New Colors
  static const Color deepBlue = Color(0xFF00025D);
  static const Color brightBlue = Color(0xFF5271FF);

  // Function to create base text theme with Urbanist font
  static TextTheme _buildTextTheme(TextTheme base, Color textColor) {
    return base.copyWith(
      displayLarge:
          base.displayLarge?.copyWith(fontFamily: 'Urbanist', color: textColor),
      displayMedium: base.displayMedium
          ?.copyWith(fontFamily: 'Urbanist', color: textColor),
      displaySmall:
          base.displaySmall?.copyWith(fontFamily: 'Urbanist', color: textColor),
      headlineMedium: base.headlineMedium
          ?.copyWith(fontFamily: 'Urbanist', color: textColor),
      headlineSmall: base.headlineSmall
          ?.copyWith(fontFamily: 'Urbanist', color: textColor),
      titleLarge:
          base.titleLarge?.copyWith(fontFamily: 'Urbanist', color: textColor),
      titleMedium:
          base.titleMedium?.copyWith(fontFamily: 'Urbanist', color: textColor),
      titleSmall:
          base.titleSmall?.copyWith(fontFamily: 'Urbanist', color: textColor),
      bodyLarge:
          base.bodyLarge?.copyWith(fontFamily: 'Urbanist', color: textColor),
      bodyMedium:
          base.bodyMedium?.copyWith(fontFamily: 'Urbanist', color: textColor),
      bodySmall:
          base.bodySmall?.copyWith(fontFamily: 'Urbanist', color: textColor),
      labelLarge:
          base.labelLarge?.copyWith(fontFamily: 'Urbanist', color: textColor),
      labelMedium:
          base.labelMedium?.copyWith(fontFamily: 'Urbanist', color: textColor),
      labelSmall:
          base.labelSmall?.copyWith(fontFamily: 'Urbanist', color: textColor),
    );
  }

  // Theme data for light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: darkGray,
    scaffoldBackgroundColor: offWhite,
    appBarTheme: const AppBarTheme(
      color: offWhite,
      elevation: 0,
      iconTheme: IconThemeData(color: offBlack),
      titleTextStyle: TextStyle(
          fontFamily: 'Urbanist',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: offBlack),
    ),
    colorScheme: ColorScheme.light(
      primary: darkGray,
      onPrimary: offWhite,
      secondary: brightBlue,
      onSecondary: offWhite,
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
      hintStyle: const TextStyle(color: lightGray, fontFamily: 'Urbanist'),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(darkGray),
        foregroundColor: WidgetStateProperty.all(offWhite),
        textStyle: WidgetStateProperty.all(
            const TextStyle(fontFamily: 'Urbanist', fontWeight: FontWeight.bold)),
      ),
    ),
  );

  // Theme data for dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: lightGray,
    scaffoldBackgroundColor: darkGray,
    appBarTheme: const AppBarTheme(
      color: darkGray,
      elevation: 0,
      iconTheme: IconThemeData(color: offWhite),
      titleTextStyle: TextStyle(
          fontFamily: 'Urbanist',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: offWhite),
    ),
    colorScheme: ColorScheme.dark(
      primary: lightGray,
      onPrimary: fullBlack,
      secondary: brightBlue,
      onSecondary: offWhite,
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
      hintStyle: const TextStyle(color: lightGray, fontFamily: 'Urbanist'),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(lightGray),
        foregroundColor: WidgetStateProperty.all(fullBlack),
        textStyle: WidgetStateProperty.all(
            const TextStyle(fontFamily: 'Urbanist', fontWeight: FontWeight.bold)),
      ),
    ),
  );
}
