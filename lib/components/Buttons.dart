import 'package:flutter/material.dart';
import 'package:footx/services/theme.dart';
import 'appColors.dart';

class CustomButton80 extends StatelessWidget {
  final Color color;
  final String text;
  final double borderWidth;
  final VoidCallback onPressed;

  const CustomButton80({
    super.key,
    required this.color,
    required this.text,
    this.borderWidth = 1.0,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // Obtenez la largeur de l'écran
    final screenWidth = MediaQuery.of(context).size.width;

    // Calculez la largeur du bouton en fonction de la largeur de l'écran
    final buttonWidth = screenWidth * 0.8; // Par exemple, le bouton prendra 80% de la largeur de l'écran

    return SizedBox(
      width: buttonWidth,
      height: 50, // Hauteur du bouton fixée à 50
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Rayon de bordure pour arrondir les angles
              side: BorderSide(
                color: ThemeClass.fullBlack,
                width: borderWidth,
              )
            ),
          ),
          elevation: MaterialStateProperty.all<double>(4), // Ombre du bouton
        ),
        child: Text(
          text,
          style: TextStyle(
            color: _getTextColor(color),
            fontWeight: FontWeight.w600, // Police semi-gras
            fontFamily: 'Urbanist', // Police Urbanist
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  // Fonction privée pour déterminer la couleur du texte en fonction de la couleur du bouton
  Color _getTextColor(Color backgroundColor) {
    // Calculer la luminosité de la couleur d'arrière-plan
    final luminance = backgroundColor.computeLuminance();

    // Utiliser une couleur de texte blanche ou noire en fonction de la luminosité
    return luminance > 0.5 ? Colors.black : Colors.white;
  }
}
