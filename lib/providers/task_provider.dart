import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskProvider with ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  Future<void> fetchTasks() async {
    try {
      final QuerySnapshot result =
          await FirebaseFirestore.instance.collection('tasks').get();
      _tasks = result.docs
          .map((doc) => Task.fromFirestore(doc.data() as Map<String, dynamic>))
          .toList();
      notifyListeners();
    } catch (error) {
      print("Erro ao buscar tarefas: $error");
    }
  }

  Future<void> addTask(Task task) async {
    try {
      await FirebaseFirestore.instance.collection('tasks').add(task.toMap());
      await fetchTasks(); // Atualize a lista após adicionar
    } catch (error) {
      print("Erro ao adicionar tarefa: $error");
    }
  }

  Future<void> updateTask(Task task) async {
    try {
      await FirebaseFirestore.instance
          .collection('tasks')
          .doc(task.id)
          .update(task.toMap());
      await fetchTasks(); // Atualize a lista após atualizar
    } catch (error) {
      print("Erro ao atualizar tarefa: $error");
    }
  }
}
