import 'package:flutter/material.dart';

import 'custom_example_continer.dart';

// GridView.builder Example
class GridViewBuilderExample extends StatelessWidget {
  const GridViewBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Number of columns
        mainAxisSpacing: 10, // Vertical spacing between items
        crossAxisSpacing: 10, // Horizontal spacing between items
      ),
      padding: const EdgeInsets.all(10),
      itemCount: 17,
      itemBuilder: (context, index) {
        return CustomExampleContiner(
          color: Colors.primaries[index],
        );
      },
    );
  }
}
