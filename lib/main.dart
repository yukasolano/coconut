import 'package:coconut/model/tasks_list_model.dart';
import 'package:coconut/screen/new_task.dart';
import 'package:coconut/screen/tasks_list_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import 'model/task.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
        create: (context) => TasksListModel(tasks: [
              Task(name: "Item 1", checked: false, id: const Uuid().v4()),
              Task(name: "Item 2", checked: false, id: const Uuid().v4()),
              Task(name: "Item 3", checked: false, id: const Uuid().v4()),
              Task(name: "Item 4", checked: false, id: const Uuid().v4()),
              Task(name: "Item 5", checked: false, id: const Uuid().v4()),
              Task(name: "Item 6", checked: false, id: const Uuid().v4()),
              Task(name: "Item 7", checked: false, id: const Uuid().v4()),
              Task(name: "Item 8", checked: false, id: const Uuid().v4()),
              Task(name: "Item 9", checked: false, id: const Uuid().v4()),
              Task(name: "Item 10", checked: false, id: const Uuid().v4()),
            ]))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coconut',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/tasks",
      routes: {
        "/tasks": (context) => const TasksListPage(),
        "/new-task": (context) => const NewTaskPage(),
      },
    );
  }
}
