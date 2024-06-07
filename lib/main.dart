import 'package:flutter/material.dart';
import 'package:footx/screens/auth/login/welcomePage.dart';
import 'package:footx/screens/auth/password/otpVerificationPage.dart';
import 'package:footx/screens/home/homePage.dart';
import 'package:footx/services/theme.dart';
// Importez la classe HomePage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      //home: const OTPVerificationPage(), // Lancez la classe HomePage comme page d'accueil
      //home: const WelcomePage(), // Lancez la classe HomePage comme page d'accueil
      home: const HomePage(), //pour dev
    );
  }
}
