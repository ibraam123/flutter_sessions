import 'package:flutter/material.dart';

import 'custom_example_continer.dart';

// ListView Example
class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomExampleContiner(width: 100, height: 200, color: Colors.blueAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 150, height: 150, color: Colors.redAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.greenAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.yellowAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.blueGrey),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.purpleAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.orangeAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.pinkAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.cyanAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.limeAccent),
      ],
    );
  }
}
