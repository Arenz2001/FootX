import "dart:math";

import "package:flutter/material.dart";
import "package:footx/Components/Buttons.dart";

class passwordChangedPage extends StatefulWidget {
  const passwordChangedPage({super.key});

  @override
  State<passwordChangedPage> createState() => _passwordChangedPageState();
}

class _passwordChangedPageState extends State<passwordChangedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mot de passe modifié'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.check_box_outlined,
                  color: Colors.black, size: 150),
              const Text('Mot de passe modifié avec succès',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              const Text(
                  'Vous pouvez maintenant vous connecter avec votre nouveau mot de passe',
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              CustomButton80(
                color: Colors.red,
                text: "Retour à la page d'accueil",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const passwordChangedPage()));
                },
              ),
            ],
          ),
        ));
  }
}
