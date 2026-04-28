class Task {
  final String id;
  final String title;
  final bool isCompleted;
  final String userId;

  Task({
    required this.id,
    required this.title,
    this.isCompleted = false,
    required this.userId,
  });

  // Convert a Task object into a Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'isCompleted': isCompleted,
      'userId': userId,
    };
  }

  // Create a Task object from a Firestore Map
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      isCompleted: map['isCompleted'] ?? false,
      userId: map['userId'] ?? '',
    );
  }

  // Create a copy of the Task with updated fields
  Task copyWith({
    String? id,
    String? title,
    bool? isCompleted,
    String? userId,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
      userId: userId ?? this.userId,
    );
  }
}
