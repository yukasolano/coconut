import 'package:coconut/model/task.dart';
import 'package:flutter/material.dart';

class TasksListModel extends ChangeNotifier {
  final List<Task> tasks;

  TasksListModel({required this.tasks});

  void add(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void reorder(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final Task item = tasks.removeAt(oldIndex);
    tasks.insert(newIndex, item);
    notifyListeners();
  }
}
