import 'package:flutter/material.dart';

class RowCircles extends StatelessWidget {
  const RowCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.circle , color: Colors.red,size: 64,),
        SizedBox(width: 16,),
        Icon(Icons.circle , color: Colors.green,size: 64,),
        SizedBox(width: 16,),
        Icon(Icons.circle , color: Colors.blue,size: 64,)
      ],
    );
  }
}
