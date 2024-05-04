import 'package:flutter/material.dart';
import 'package:footx/components/Buttons.dart'; // Assurez-vous que ce bouton est approprié pour votre cas
import 'package:footx/components/login/customBackButton.dart';
import 'package:footx/services/theme.dart';

class PasswordChangedPage extends StatelessWidget {
  const PasswordChangedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_box_outlined,
                size: 120,
              ),
              const SizedBox(height: 24),
              const Text(
                'Mot de passe changé !',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Le mot de passe a été changé avec succès.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              CustomButton80(
                text: 'Page d\'accueil',
                onPressed: () {

                },
                color: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
