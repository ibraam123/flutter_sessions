import 'package:flutter/material.dart';
import 'package:session_7_flutter_hult/test_widgets/widgets/row_circles.dart';
import 'package:session_7_flutter_hult/test_widgets/widgets/row_starts.dart';

class TaskOne extends StatelessWidget {
  const TaskOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RowStars(),
        SizedBox(height: 16,),
        RowCircles(),
        SizedBox(height: 16,),
        Divider(
          color: Colors.black,
          thickness: 16,
          endIndent: 50,
          indent: 50,
        ),
        Text("Flutter Basic Layouts" , style: TextStyle(fontSize: 32),)
      ],
    );
  }
}
