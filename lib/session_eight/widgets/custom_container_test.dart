import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomContainerTest extends StatelessWidget {
  const CustomContainerTest({super.key, required this.count, this.onPress});
  final int count;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(
              "Tap Count : $count"
          ),
          Spacer(),
          IconButton(
            onPressed: onPress,
            icon: Icon(
                Icons.touch_app
            ),
          )
        ],
      ),
    );
  }
}
