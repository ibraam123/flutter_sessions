import 'package:flutter/material.dart';

import 'custom_example_continer.dart';

// GridView Example
class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          mainAxisSpacing: 10, // Vertical spacing between items
          crossAxisSpacing: 10, // Horizontal spacing between items
        ),
        padding: const EdgeInsets.all(10),
        children: [
          CustomExampleContiner(width: 100, height: 200, color: Colors.blueAccent),
          CustomExampleContiner(width: 150, height: 150, color: Colors.redAccent),
          CustomExampleContiner(width: 200, height: 100, color: Colors.greenAccent),
          CustomExampleContiner(width: 200, height: 100, color: Colors.yellowAccent),
          CustomExampleContiner(width: 200, height: 100, color: Colors.blueGrey),
          CustomExampleContiner(width: 200, height: 100, color: Colors.purpleAccent),
          CustomExampleContiner(width: 200, height: 100, color: Colors.orangeAccent),
          CustomExampleContiner(width: 200, height: 100, color: Colors.pinkAccent),
          CustomExampleContiner(width: 200, height: 100, color: Colors.cyanAccent),
          CustomExampleContiner(width: 200, height: 100, color: Colors.limeAccent),
        ]
    );
  }
}
