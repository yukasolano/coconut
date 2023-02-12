import 'package:coconut/tasks_list.dart';
import 'package:flutter/material.dart';

class TasksListPage extends StatelessWidget {
  const TasksListPage({Key? key}) : super(key: key);

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
