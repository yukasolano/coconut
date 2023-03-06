import 'package:coconut/model/tasks_list_model.dart';
import 'package:coconut/screen/tasks_list/task_item.dart';
import 'package:coconut/service/task_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Task>>(
      future: TaskService().getAll(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return const Text('Carregando');
          case ConnectionState.waiting:
            return const Text('Carregando');
          case ConnectionState.active:
            return const Text('Carregando');
          case ConnectionState.done:
            if (snapshot.hasData) {
              print('done');
              var taskListModel =
                  Provider.of<TasksListModel>(context, listen: true)
                      .update(tasks: snapshot.data!);
              if (taskListModel.isNotEmpty()) {
                return ReorderableListView(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  children: <Widget>[
                    for (int index = 0;
                        index < taskListModel.tasks.length;
                        index += 1)
                      TaskItem(
                        task: taskListModel.tasks[index],
                        key: Key(taskListModel.tasks[index].id),
                      )
                  ],
                  onReorder: (int oldIndex, int newIndex) {
                    taskListModel.reorder(oldIndex, newIndex);
                  },
                );
              }
              return const Text('Nenhuma tarefa');
            }
            return const Text('Erro ao carregar tarefas');
        }
      },
    );
  }
}
