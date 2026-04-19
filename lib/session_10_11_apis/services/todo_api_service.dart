import 'package:dio/dio.dart';
import '../models/todo_model.dart';

class TodoApiService {
  final Dio _dio = Dio();

  /// GET Todos
  Future<List<TodoModel>> getTodos() async {
    try {
      final Response response = await _dio.get("https://dummyjson.com/todos");

      Map<String, dynamic> todosJson = response.data;

      List<dynamic> todos = todosJson['todos'];

      List<TodoModel> todosList = [];

      for (var todo in todos) {
        todosList.add(TodoModel.fromJson(todo));
      }

      return todosList;
    } catch (e) {
      throw Exception("Failed to load todos");
    }
  }

  /// POST Todo
  Future<TodoModel> createTodo(TodoModel todo) async {
    try {
      final response = await _dio.post(
        'https://dummyjson.com/todos/add',
        data: {
          'id': todo.id,
          'todo': todo.todo,
          'completed': todo.completed,
          'userId': todo.userId,
        },

      );

      return TodoModel.fromJson(response.data);
    } catch (e) {
      throw Exception("Failed to create todo: $e");
    }
  }

  // Put Todo
  Future<TodoModel> updateTodo(int id, Map<String, dynamic> updateData) async {
    try {
      final response = await _dio.put(
        'https://dummyjson.com/todos/$id',
        data: updateData,
      );

      return TodoModel.fromJson(response.data);
    } catch (e) {
      throw Exception("Failed to update todo: $e");
    }
  }

  // Delete Todo
  Future<void> deleteTodo(int id) async {
    try {
      await _dio.delete('https://dummyjson.com/todos/$id');
    } catch (e) {
      throw Exception("Failed to delete todo: $e");
    }
  }
}
