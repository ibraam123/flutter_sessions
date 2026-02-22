import 'package:flutter/material.dart';

// Buttons Widget Example
class ButtonsWidgets extends StatelessWidget {
  const ButtonsWidgets({super.key , required this.buttonType});
  final String buttonType;

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
        onPressed: () {
          // Handle button press
          print('ElevatedButton pressed');
        },
        child: const Text('Elevated Button'),
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
        onPressed: () {
          // Handle button press
          print('TextButton pressed');
        },
        child: const Text('Text Button'),
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

