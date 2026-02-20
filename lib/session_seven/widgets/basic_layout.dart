import 'package:flutter/material.dart';

class BasicLayout extends StatelessWidget {
  const BasicLayout({super.key});
  // Implement Column, Row, MainAxisAlignment, CrossAxisAlignment here

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.star, color: Colors.red, size: 50),
            Icon(Icons.star, color: Colors.green, size: 50),
            Icon(Icons.star, color: Colors.blue, size: 50),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.circle, color: Colors.orange, size: 50),
            Icon(Icons.circle, color: Colors.purple, size: 50),
            Icon(Icons.circle, color: Colors.yellow, size: 50),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          'Flutter Basic Layout Widgets',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
