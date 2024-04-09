import 'package:flutter/material.dart';
import 'Login/welcomePage.dart'; // Importez la classe HomePage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(), // Lancez la classe HomePage comme page d'accueil
    );
  }
}
