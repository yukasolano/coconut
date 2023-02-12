import 'package:coconut/model/task.dart';
import 'package:flutter/material.dart';

class TaskItem extends StatefulWidget {
  final Task task;

  const TaskItem({Key? key, required this.task}) : super(key: key);

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Padding(
      key: Key(widget.task.id),
      padding: const EdgeInsets.all(5.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: colorScheme.primary.withOpacity(0.15),
          ),
          height: 80,
          child: Row(
            children: [
              Checkbox(
                  value: widget.task.checked,
                  onChanged: (bool? value) {
                    setState(() {
                      widget.task.checked = value!;
                    });
                  }),
              Text(widget.task.name),
            ],
          )),
    );
  }
}
