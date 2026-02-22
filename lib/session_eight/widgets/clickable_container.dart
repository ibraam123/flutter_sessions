import 'package:flutter/material.dart';

// GestureDetector Example
class ClickAbleContainer extends StatelessWidget {
  const ClickAbleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap event
        print('Container tapped!');
      },
      child: Container(
        width: 200,
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: const Text(
          'Tap Me',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

