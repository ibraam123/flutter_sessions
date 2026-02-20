import 'package:flutter/material.dart';

import 'custom_example_continer.dart';

// Stack and Positioned Example
class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Positioned(
          top: 50,
          left: 50,
          child: CustomExampleContiner(
            width: 200,
            height: 200,
            color: Colors.blueAccent,
          ),
        ),
        Positioned(
          top: 180,
          left: 150,
          child: CustomExampleContiner(
            width: 200,
            height: 200,
            color: Colors.redAccent,
          ),
        ),
        Positioned(
          top: 150,
          left: 80,
          child: Text(
            'Flutter Advanced Layout Widgets',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
