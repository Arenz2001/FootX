import 'package:flutter/material.dart';
import 'package:footx/screens/auth/register/registerPage.dart';
import 'package:footx/screens/auth/login/loginPage.dart';
import 'package:footx/services/theme.dart';
import '../../../components/Buttons.dart';
import '../../../components/appColors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Text('Connexion'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Expanded(
                flex: 20,
                child: Image(
                  width: 300,
                  image: AssetImage('assets/images/logo.png',
                  ),
                ),
            ),
            const Expanded(
                flex: 40,
                child: Image(
                  image: AssetImage('assets/images/photoJoueur.png'
                  ),
                  width: 400,
                  height: 400,
                )
            ),
            const SizedBox(height: 20),
            Expanded(
                flex: 20,
                child:Column(
                  children: [
                    CustomButton80(
                      color: AppColors.blackColor,
                      text: 'Se connecter',
                      onPressed: () {
                        // Action à effectuer lorsque le bouton est pressé
                        print('Bouton cliqué !');
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const LoginPage()));
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomButton80(
                      color: AppColors.whiteColor,
                      text: "Créer un compte",
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const RegisterPage()));
                      },
                    ),
                    const SizedBox(height: 15),
                    GestureDetector(
                      child: const Text("Se connecter en invité",
                          style: TextStyle(fontSize: 15, color: ThemeClass.brightBlue,
                        )
                      ),
                      onTap: () => print('Texte cliqué !'),
                    ), 
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
