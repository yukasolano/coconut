import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/task.dart';

class TaskService {
  static const url = 'http://10.0.2.2:8080/tasks';

  Future<List<Task>> getAll() async {
    var response = await http.get(Uri.parse(url));
    List<dynamic> tasksJson = json.decode(response.body);
    print('Response: $tasksJson');
    return tasksJson
        .map((taskJson) => Task(
            name: taskJson['name'],
            checked: taskJson['checked'],
            id: taskJson['id']))
        .toList();
  }

  Future<Task> create(String name) async {
    var response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-type': 'application/json',
      },
      body: json.encode({'name': name}),
    );
    var taskJson = json.decode(response.body);
    print('Response: $taskJson');
    return Task(
        name: taskJson['name'],
        checked: taskJson['checked'],
        id: taskJson['id']);
  }
}
