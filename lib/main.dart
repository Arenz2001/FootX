import 'package:flutter/material.dart';
import 'package:footx/services/theme.dart';
import 'screens/auth/login/welcomePage.dart'; // Importez la classe HomePage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      home: WelcomePage(), // Lancez la classe HomePage comme page d'accueil
    );
  }
}
