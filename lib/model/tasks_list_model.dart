import 'package:coconut/model/task.dart';
import 'package:flutter/cupertino.dart';

class TasksListModel extends ChangeNotifier {
  final List<Task> tasks;

  TasksListModel({required this.tasks});

  void add(Task task) {
    tasks.add(task);
    notifyListeners();
  }
}
