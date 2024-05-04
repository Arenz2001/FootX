import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footx/components/Buttons.dart';
import 'package:footx/components/login/customTextField.dart';
import 'package:footx/screens/auth/password/forgotPasswordPage.dart';
import 'package:footx/screens/auth/register/registerPage.dart';
// ignore: unused_import
import 'package:footx/services/theme.dart';
import 'package:footx/components/login/textWithLine.dart';
import 'package:footx/components/login/customBackButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Ravi de vous revoir !',
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
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ForgotPasswordPage()));
                      },
                      child: const Text(
                        'Mot de passe oublié ?',
                        style: TextStyle(
                          color: Colors
                              .blue,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    const SizedBox(height: 24),
                    CustomButton80(
                      color: theme.colorScheme.onBackground,
                      text: 'Connexion',
                      onPressed: () {
                      },
                    ),
                    const SizedBox(height: 45),
                    TextWithLines(
                      text: 'Ou connectez-vous avec',
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
                      fontWeight: FontWeight
                          .normal,
                      fontFamily: 'Urbanist',
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Pas encore inscrit ? ',
                      ),
                      TextSpan(
                        text: 'Inscrivez-vous',
                        style: const TextStyle(
                          color: Colors
                              .blue,
                          fontWeight: FontWeight
                              .bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const RegisterPage()));
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
