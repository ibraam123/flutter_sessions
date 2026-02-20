import 'package:flutter/material.dart';

class StackAndPositioned extends StatelessWidget {
  const StackAndPositioned({super.key});
  // Implement Stack, Positioned

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 50,
          left: 50,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        ),
        Positioned(
          top: 100,
          left: 100,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
        Positioned(
          top: 150,
          left: 50,
          child: Text(
            'Flutter Advanced Layout Widgets',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
