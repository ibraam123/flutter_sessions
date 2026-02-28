import 'package:flutter/material.dart';

// Buttons Widget Example
class ButtonsWidgets extends StatelessWidget {
  const ButtonsWidgets({super.key , required this.buttonType, required this.name, required this.onTap});
  final String buttonType;
  final String name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    if (buttonType == 'ElevatedButton') {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onTap,
        child: Text(name),
      );
    } else if (buttonType == 'TextButton') {
      return TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onTap,
        child: Text(name),
      );
    } else if (buttonType == 'IconButton') {
      return IconButton(
        style: IconButton.styleFrom(
          foregroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
        onPressed: () {
          // Handle button press
          print('IconButton pressed');
        },
        icon: const Icon(Icons.thumb_up),
      );
    } else {
      return const SizedBox.shrink(); // Return an empty widget if the button type is not recognized
    }
  }
}

