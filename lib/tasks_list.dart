import 'package:coconut/task.dart';
import 'package:coconut/task_item.dart';
import 'package:flutter/material.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  //final List<int> _items = List<int>.generate(50, (int index) => index);
 final List<Task> _items = [
   Task(name: "Item 1", checked: false, id: 0),
   Task(name: "Item 2", checked: false, id: 1),
   Task(name: "Item 3", checked: false, id: 2),
   Task(name: "Item 4", checked: false, id: 3),
   Task(name: "Item 5", checked: false, id: 4),
   Task(name: "Item 6", checked: false, id: 5),
   Task(name: "Item 7", checked: false, id: 6),
 ];

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      children: <Widget>[
        for (int index = 0; index < _items.length; index += 1)
          TaskItem(
            task: _items[index],
            key: Key('${_items[index].id}'),
          )
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final Task item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        });
      },
    );
  }
}
