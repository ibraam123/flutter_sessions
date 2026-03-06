import 'package:flutter/material.dart';
import '../../../session_eight/widgets/buttons_widget.dart';
import '../logic/task_repo.dart';
import '../models/task_model.dart';


class AddedTaskScreen extends StatefulWidget {
  const AddedTaskScreen({super.key, required this.taskRepo});
  final TaskRepo taskRepo;

  @override
  State<AddedTaskScreen> createState() => _AddedTaskScreenState();
}

class _AddedTaskScreenState extends State<AddedTaskScreen> {
  late final TextEditingController taskText ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    taskText = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    taskText.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: taskText,
              decoration: InputDecoration(
                labelText: "Title",
                labelStyle: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.redAccent, width: 2),
                ),
              ),
            ),
            SizedBox(height: 32),
            ButtonsWidgets(
              buttonType: "ElevatedButton",
              name: "Add",
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      widget.taskRepo.addTask(
                        TaskModel(text: taskText.text),
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor: Colors.blueAccent,
                    duration: Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                );

                taskText.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
