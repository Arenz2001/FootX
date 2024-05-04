import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomBackButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 40, // Adjust size as needed
        height: 40, // Adjust size as needed
        decoration: BoxDecoration(
          color: Colors.white, // Adjust background color as needed
          borderRadius: BorderRadius.circular(12), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: const Icon(
          Icons.navigate_before, // Material Icons back arrow
          color: Colors.black, // Adjust color as needed
        ),
      ),
    );
  }
}
