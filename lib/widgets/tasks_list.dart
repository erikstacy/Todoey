import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

//*
//*
//* Tasks List declaration
//*
//*
class TasksList extends StatefulWidget {

  TasksList(this.tasks);

  final List<Task> tasks;

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        toggleCheckbox: (checkboxState) {
          setState(() {
            widget.tasks[index].isDone = checkboxState;
          });
        },
      );
    }, itemCount: widget.tasks.length,);
  }
}