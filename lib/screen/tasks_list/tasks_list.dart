import 'package:coconut/model/tasks_list_model.dart';
import 'package:coconut/screen/tasks_list/task_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksListModel>(
      builder: (BuildContext context, TasksListModel list, Widget? child) {
        return ReorderableListView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: <Widget>[
            for (int index = 0; index < list.tasks.length; index += 1)
              TaskItem(
                task: list.tasks[index],
                key: Key(list.tasks[index].id),
              )
          ],
          onReorder: (int oldIndex, int newIndex) {
            list.reorder(oldIndex, newIndex);
          },
        );
      },
    );
  }
}
