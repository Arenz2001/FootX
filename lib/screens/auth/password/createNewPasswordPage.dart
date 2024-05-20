import 'package:flutter/material.dart';
import 'package:footx/components/Buttons.dart';
import 'package:footx/components/login/customTextField.dart';
import 'package:footx/components/login/customBackButton.dart';
import 'package:footx/screens/auth/password/passwordChanged.dart';

class CreateNewPasswordPage extends StatefulWidget {
  const CreateNewPasswordPage({super.key});

  @override
  _CreateNewPasswordPageState createState() => _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
                  children: [
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
                      'Créer un nouveau mot de passe',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist-Bold',
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Votre nouveau mot de passe doit être différent de votre ancien mot de passe.",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 40),
                    CustomTextField(
                      hintText: 'Nouveau mot de passe',
                      controller: _newPasswordController,
                      keyboardType: TextInputType.text,
                      obscureText:
                          true,
                    ),
                    const SizedBox(height: 24),
                    CustomTextField(
                      hintText: 'Confirmer le mot de passe',
                      controller: _confirmPasswordController,
                      keyboardType: TextInputType.text,
                      obscureText:
                          true,
                    ),
                    const SizedBox(height: 24),
                    CustomButton80(
                      color: theme.colorScheme.onSurface,
                      text: 'Réinitialiser le mot de passe',
                      onPressed: () {
                        // Logic for password resetting
                        if (_newPasswordController.text ==
                            _confirmPasswordController.text) {
                          print('Ok');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const PasswordChangedPage()));
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Erreur'),
                                content: const Text(
                                    'Les mots de passe ne correspondent pas. Veuillez réessayer.'),
                                actions: <Widget>[ 
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
