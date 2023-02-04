import 'package:coconut/tasks_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      home: const TasksListPage(),
    );
  }
}
