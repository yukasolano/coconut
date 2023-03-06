import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/task.dart';

class TaskService {
  Future<List<Task>> getAll() async {
    var url = Uri.parse('http://10.0.2.2:8080/tasks');
    var response = await http.get(url);
    List<dynamic> tasksJson = json.decode(response.body);
    print('Response: $tasksJson');
    return tasksJson
        .map((taskJson) => Task(
            name: taskJson['name'],
            checked: taskJson['checked'],
            id: taskJson['id']))
        .toList();
  }
}
