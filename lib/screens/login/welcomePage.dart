import 'package:flutter/material.dart';
import 'package:footx/screens/password/passwordChanged.dart';
import '../../components/Buttons.dart';
import '../../components/appColors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Expanded(
                flex: 20,
                child: Image(
                  image: AssetImage('assets/images/FootXLogo.png'
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
                          MaterialPageRoute(builder: (context) => const passwordChangedPage()));
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomButton80(
                      color: AppColors.whiteColor,
                      text: "S'identifier",
                      onPressed: () {
                        // Action à effectuer lorsque le bouton est pressé
                        print('Bouton cliqué !');
                      },
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
