import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Components/Buttons.dart';
import '../Components/appColors.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 20,
                child: Image(
                  image: AssetImage('assets/images/FootXLogo.png'
                  ),
                ),
            ),
            Expanded(
                flex: 40,
                child: Image(
                  image: AssetImage('assets/images/photoJoueur.png'
                  ),
                  width: 400,
                  height: 400,
                )
            ),
            SizedBox(height: 20),
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
                      },
                    ),
                    SizedBox(height: 15),
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
