import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footx/components/Buttons.dart';
import 'package:footx/components/login/customTextField.dart';
import 'package:footx/screens/auth/login/loginPage.dart';
import 'package:footx/services/theme.dart';
import 'package:footx/components/login/textWithLine.dart';
import 'package:footx/components/login/customBackButton.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
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
                      'Bonjour ! Veuillez vous inscrire pour continuer.',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist-Bold',
                        letterSpacing: -1,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 40),
                    CustomTextField(
                      hintText: 'Nom d\'utilisateur',
                      controller: _usernameController,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      hintText: 'Email',
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      hintText: 'Mot de passe',
                      controller: _passwordController,
                      obscureText: true,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      hintText: 'Confirmer le mot de passe',
                      controller: _confirmPasswordController,
                      obscureText: true,
                    ),
                    const SizedBox(height: 24),
                    CustomButton80(
                      color: theme.colorScheme.onSurface,
                      text: 'S\'inscrire',
                      onPressed: () {
                        // Perform the registration action here
                      },
                    ),
                    const SizedBox(height: 45),
                    TextWithLines(
                      text: 'Ou inscrivez-vous avec',
                      lineColor: theme.colorScheme.onSurface,
                      textStyle: TextStyle(
                        color: theme.colorScheme.onSurface,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        _buildSocialIcon('assets/icons/facebook.svg'),
                        _buildSocialIcon('assets/icons/google.svg'),
                        _buildSocialIcon('assets/icons/apple.svg'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
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
                        text: 'Déjà inscrit ? ',
                      ),
                      TextSpan(
                        text: 'Connectez-vous',
                        style: const TextStyle(
                          color: ThemeClass.brightBlue,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
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

  Widget _buildSocialIcon(String iconPath) {
    ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        // Handle social sign-in
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 80,
        decoration: BoxDecoration(
          border: Border.all(
            color: theme.colorScheme.onSurface,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: SvgPicture.asset(
          iconPath,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
