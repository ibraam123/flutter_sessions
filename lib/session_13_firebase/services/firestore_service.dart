import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/task_model.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Collection reference
  CollectionReference get _tasksCollection => _db.collection('tasks');

  // Add a new task
  Future<void> addTask(Task task) async {
    // Generate a new document reference with a unique ID
    final docRef = _tasksCollection.doc();
    // Update the task object with the generated ID
    final taskWithId = task.copyWith(id: docRef.id);
    // Save to Firestore
    await docRef.set(taskWithId.toMap());
  }

  // Stream tasks for a specific user in real-time
  Stream<List<Task>> getTasks(String userId) {
    return _tasksCollection
        .where('userId', isEqualTo: userId)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return Task.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }

  // Update a task (edit title or toggle completion)
  Future<void> updateTask(Task task) async {
    await _tasksCollection.doc(task.id).update(task.toMap());
  }

  // Delete a task
  Future<void> deleteTask(String taskId) async {
    await _tasksCollection.doc(taskId).delete();
  }
}
