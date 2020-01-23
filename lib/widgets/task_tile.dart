import 'package:flutter/material.dart';

// * 
// *
// * Task Tile declaration
// *
// *
class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function toggleCheckbox;
  final Function longPressCallback;

  TaskTile({
    this.isChecked,
    this.taskTitle,
    this.toggleCheckbox,
    this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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