import 'package:flutter/material.dart';
import 'package:session_7_flutter_hult/session_10_11_apis/services/todo_api_service.dart';

import '../models/todo_model.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos"),
      ),
      body: FutureBuilder<List<TodoModel>>(
        future: TodoApiService().getTodos(),
        builder: (context,snapshot) {
          /// Loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          /// Error
          if (snapshot.hasError) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text("Error: ${snapshot.error}"),
              ),
            );
          }

          /// Success
          List<TodoModel> todos = snapshot.data!;

          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];

              return ListTile(
                leading: Icon(
                  todo.completed
                      ? Icons.check_circle
                      : Icons.circle_outlined,
                  color: todo.completed ? Colors.green : Colors.grey,
                ),
                title: Text(todo.todo),
                subtitle: Text("User ID: ${todo.userId}"),
              );
            },
          );
        },
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import '../models/todo_model.dart';
import '../services/todo_api_service.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({super.key});

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  final TodoApiService _apiService = TodoApiService();

  List<TodoModel> todos = [];
  bool isLoading = true;
  String? error;

  @override
  void initState() {
    super.initState();
    fetchTodos();
  }

  /// 🟢 GET
  Future<void> fetchTodos() async {
    setState(() {
      isLoading = true;
    });

    try {
      final data = await _apiService.getTodos();
      setState(() {
        todos = data;
        error = null;
      });
    } catch (e) {
      setState(() {
        error = e.toString();
      });
    }

    setState(() {
      isLoading = false;
    });
  }

  /// 🟢 POST
  Future<void> addTodo() async {
    final newTodo = TodoModel(
      id: 0, // dummyjson ignores this
      todo: "New Todo from App",
      completed: false,
      userId: 1,
    );

    try {
      final created = await _apiService.createTodo(newTodo);

      setState(() {
        todos.insert(0, created); // add to top
      });
    } catch (e) {
      showError(e.toString());
    }
  }

  /// 🟢 PUT
  Future<void> toggleTodo(TodoModel todo) async {
    try {
      final updated = await _apiService.updateTodo(
        todo.id,
        {
          "completed": !todo.completed,
        },
      );

      setState(() {
        final index = todos.indexWhere((t) => t.id == todo.id);
        if (index != -1) {
          todos[index] = updated;
        }
      });
    } catch (e) {
      showError(e.toString());
    }
  }

  /// 🟢 DELETE
  Future<void> deleteTodo(int id) async {
    try {
      await _apiService.deleteTodo(id);

      setState(() {
        todos.removeWhere((t) => t.id == id);
      });
    } catch (e) {
      showError(e.toString());
    }
  }

  void showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: fetchTodos,
          )
        ],
      ),

      /// 🟢 ADD BUTTON
      floatingActionButton: FloatingActionButton(
        onPressed: addTodo,
        child: const Icon(Icons.add),
      ),

      body: buildBody(),
    );
  }

  Widget buildBody() {
    /// Loading
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    /// Error
    if (error != null) {
      return Center(child: Text(error!));
    }

    /// Empty
    if (todos.isEmpty) {
      return const Center(child: Text("No Todos"));
    }

    /// Success
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];

        return ListTile(
          leading: IconButton(
            icon: Icon(
              todo.completed
                  ? Icons.check_circle
                  : Icons.circle_outlined,
              color: todo.completed ? Colors.green : Colors.grey,
            ),
            onPressed: () => toggleTodo(todo),
          ),

          title: Text(
            todo.todo,
            style: TextStyle(
              decoration: todo.completed
                  ? TextDecoration.lineThrough
                  : null,
            ),
          ),

          subtitle: Text("User ID: ${todo.userId}"),

          trailing: IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () => deleteTodo(todo.id),
          ),
        );
      },
    );
  }
}*/