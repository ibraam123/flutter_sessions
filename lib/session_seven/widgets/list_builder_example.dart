import 'package:flutter/material.dart';

import 'custom_example_continer.dart';

// ListView.builder Example
class ListViewBuilderExample extends StatelessWidget {
  const ListViewBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 17,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: CustomExampleContiner(
            height: 100,
            color: Colors.primaries[index],
          ),
        );
      },
    );
  }
}
