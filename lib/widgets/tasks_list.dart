import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

//*
//*
//* Tasks List declaration
//*
//*
class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        toggleCheckbox: (checkboxState) {
          setState(() {
            tasks[index].isDone = checkboxState;
          });
        },
      );
    }, itemCount: tasks.length,);
  }
}