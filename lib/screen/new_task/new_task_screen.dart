import 'package:coconut/model/tasks_list_model.dart';
import 'package:coconut/service/task_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  _NewTaskScreenState createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
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
                        TaskService().create(controller.text).then((task) {
                          Provider.of<TasksListModel>(context, listen: false)
                              .add(task);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Nova tarefa criada'),
                            ),
                          );
                          Navigator.pop(context);
                        });
                      },
                      child: const Text("Create"))
                ],
              ),
            ),
          ),
        ));
  }
}
