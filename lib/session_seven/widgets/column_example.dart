import 'package:flutter/material.dart';

import 'custom_example_continer.dart';

// Column Example
class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: CustomExampleContiner()
            );
          },

        )
    );
  }
}
