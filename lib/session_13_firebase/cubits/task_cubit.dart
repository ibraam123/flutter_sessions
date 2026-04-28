import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/task_model.dart';
import '../services/firestore_service.dart';

// --- States ---
abstract class TaskState {}

class TaskInitial extends TaskState {}

class TaskLoading extends TaskState {}

class TasksLoaded extends TaskState {
  final List<Task> tasks;
  TasksLoaded(this.tasks);
}

class TaskError extends TaskState {
  final String message;
  TaskError(this.message);
}

// --- Cubit ---
class TaskCubit extends Cubit<TaskState> {
  final FirestoreService _firestoreService;

  TaskCubit(this._firestoreService) : super(TaskInitial());

  // Fetch tasks for a specific user
  void fetchTasks(String userId) {
    emit(TaskLoading());
    try {
      _firestoreService.getTasks(userId).listen((tasks) {
        emit(TasksLoaded(tasks));
      }, onError: (error) {
        emit(TaskError(error.toString()));
      });
    } catch (e) {
      emit(TaskError(e.toString()));
    }
  }

  // Add task
  Future<void> addTask(String title, String userId) async {
    try {
      final newTask = Task(
        id: '', // Will be set by Firestore
        title: title,
        userId: userId,
      );
      await _firestoreService.addTask(newTask);
    } catch (e) {
      emit(TaskError(e.toString()));
    }
  }

  // Toggle completion
  Future<void> toggleTaskCompletion(Task task) async {
    try {
      final updatedTask = task.copyWith(isCompleted: !task.isCompleted);
      await _firestoreService.updateTask(updatedTask);
    } catch (e) {
      emit(TaskError(e.toString()));
    }
  }

  // Update task title
  Future<void> updateTaskTitle(Task task, String newTitle) async {
    try {
      final updatedTask = task.copyWith(title: newTitle);
      await _firestoreService.updateTask(updatedTask);
    } catch (e) {
      emit(TaskError(e.toString()));
    }
  }

  // Delete task
  Future<void> deleteTask(String taskId) async {
    try {
      await _firestoreService.deleteTask(taskId);
    } catch (e) {
      emit(TaskError(e.toString()));
    }
  }
}
