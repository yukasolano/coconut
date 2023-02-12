import 'package:coconut/screen/tasks_list/tasks_list.dart';
import 'package:flutter/material.dart';

class TasksListScreen extends StatelessWidget {
  const TasksListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My tasks"),
      ),
      body: const TasksList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/new-task");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
