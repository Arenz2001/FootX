import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:footx/components/Buttons.dart';
import 'package:footx/components/login/customTextField.dart';
import 'package:footx/components/login/customBackButton.dart';
import 'package:footx/screens/auth/login/loginPage.dart';
import 'package:footx/screens/auth/password/otpVerificationPage.dart';
import 'package:footx/services/theme.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(27.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: CustomBackButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Navigate back
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Mot de passe oublié ?',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist-Bold',
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Pas de problème ! Entrez votre adresse e-mail ci-dessous et nous vous enverrons un lien pour réinitialiser votre mot de passe.",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 40),
                    CustomTextField(
                      hintText: 'Email',
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 24),
                    CustomButton80(
                      color: theme.colorScheme.onBackground,
                      text: 'Confirmer',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const OTPVerificationPage()));
                      },
                    ),
                    
                  ],
                ),
              ),
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      color: theme.colorScheme.onSurface,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Urbanist',
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Mot de passe retrouvé ? ',
                      ),
                      TextSpan(
                        text: 'Connexion',
                        style: const TextStyle(
                          color: ThemeClass.brightBlue,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
