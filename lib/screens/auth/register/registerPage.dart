import "package:flutter/material.dart";
import "package:footx/services/theme.dart";

class registerPage extends StatelessWidget {
  const registerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Text('Bonjour ! Veuillez vous inscrire avant de continuer.', 
              style: TextStyle(fontSize: 20, fontFamily: 'Urbanist'),
              ),
            ),
          Container(
          margin: const EdgeInsets.only(top: 15, bottom: 15, right: 20, left: 20),
          child: TextField(
            decoration: InputDecoration(
              //border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
              enabled: true,
              fillColor: ThemeClass.lightGray,
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ThemeClass.darkGray), borderRadius: BorderRadius.circular(8)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    //color: MyTheme.dgfipJaune,
                    width: 2.5,
                  ),
                  borderRadius: BorderRadius.circular(25)),
              hintText: 'hinttext',
              filled: true,
              //fillColor: MyTheme.blanc,
            ),
          ),
        ),
          ],
        ),
      )
    );
  }
}