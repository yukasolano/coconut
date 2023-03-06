import 'package:coconut/model/tasks_list_model.dart';
import 'package:coconut/screen/new_task/new_task_screen.dart';
import 'package:coconut/screen/tasks_list/tasks_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => TasksListModel())
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
        "/tasks": (context) => const TasksListScreen(),
        "/new-task": (context) => const NewTaskScreen(),
      },
    );
  }
}
