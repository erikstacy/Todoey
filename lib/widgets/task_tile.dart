import 'package:flutter/material.dart';

// * 
// *
// * Task Tile declaration
// *
// *
class TaskTile extends StatelessWidget {

  TaskTile({
    this.isChecked,
    this.taskTitle,
    this.toggleCheckbox,
  });

  final bool isChecked;
  final String taskTitle;
  final Function toggleCheckbox;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckbox,
      ),
    );
  }
}