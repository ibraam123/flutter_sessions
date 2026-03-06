import '../models/task_model.dart';

class TaskRepo {
  List<TaskModel> tasks = [];

  String addTask(TaskModel task) {
    if (task.text.isNotEmpty) {
      tasks.add(task);
      return "Task Added Successfully";
    }
    return "Please Enter Task Text";
  }
}
