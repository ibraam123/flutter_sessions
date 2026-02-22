import 'package:flutter/material.dart';

class RowStars extends StatelessWidget {
  const RowStars({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star , color: Colors.red,size: 64,),
        Spacer(),
        Icon(Icons.star , color: Colors.blue,size: 64,),
        Spacer(),
        Icon(Icons.star , color: Colors.blue,size: 64,)
      ],
    );
  }
}
