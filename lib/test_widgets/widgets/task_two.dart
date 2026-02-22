import 'package:flutter/material.dart';

class TaskTwo extends StatelessWidget {
  const TaskTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 50,
            left: 50,
            child: CustomContainer(color: Colors.blueAccent)
        ),
        Positioned(
            top: 150,
            left: 150,
            child: CustomContainer(color: Colors.redAccent)),
        Positioned(
            top: 150,
            left: 100,
            child: Text("Flutter Advanced Layouts Widgets"))
      ],
    );
  }
}


class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      color: color ,
      child: Center(child: Text("Flutter" , style: TextStyle(
          fontSize: 26, color: Colors.white
      ),)),
    );
  }
}
