import 'package:coconut/model/task.dart';
import 'package:flutter/material.dart';

class TasksListModel extends ChangeNotifier {
  late List<Task> tasks;

  bool isNotEmpty() {
    return tasks.isNotEmpty;
  }

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

  TasksListModel update({required List<Task> tasks}) {
    this.tasks = tasks;
    return this;
  }
}
