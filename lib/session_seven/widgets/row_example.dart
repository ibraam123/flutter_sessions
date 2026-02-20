import 'package:flutter/material.dart';

import 'custom_example_continer.dart';

// Row Example
class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomExampleContiner(),
          SizedBox(width: 16),
          CustomExampleContiner(),
          SizedBox(width: 16),
          CustomExampleContiner(),
        ],
      ),
    );
  }
}
