import 'package:flutter/material.dart';

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
          child: Container(
            height: 650,
            width: 375,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      labelText: 'Task',
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print("Apertou");
                        print(controller.text);
                        Navigator.pop(context);
                      },
                      child: Text("Create"))
                ],
              ),
            ),
          ),
        ));
  }
}
