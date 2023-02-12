import 'dart:math';

import 'package:coconut/model/tasks_list_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../model/task.dart';

class NewTaskPage extends StatefulWidget {
  const NewTaskPage({Key? key}) : super(key: key);

  @override
  _NewTaskPageState createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Create new task')),
        body: Center(
          child: SizedBox(
            height: 650,
            width: 375,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: controller,
                    decoration: const InputDecoration(
                      labelText: 'Task',
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Provider.of<TasksListModel>(context, listen: false).add(
                            Task(
                                name: controller.text,
                                checked: false,
                                id: const Uuid().v4()));
                        Navigator.pop(context);
                      },
                      child: const Text("Create"))
                ],
              ),
            ),
          ),
        ));
  }
}
