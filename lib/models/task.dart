class Task {
  String id;
  String title;
  bool isCompleted;

  Task({required this.id, required this.title, required this.isCompleted});

  factory Task.fromFirestore(Map<String, dynamic> firestoreDoc) {
    return Task(
      id: firestoreDoc['id'],
      title: firestoreDoc['title'],
      isCompleted: firestoreDoc['isCompleted'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'isCompleted': isCompleted,
    };
  }
}
