import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  const TaskTile({required this.taskTitle,this.isChecked = false,required this.checkBoxCallback,required this.deleteCallback,super.key});
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallback;
  final Function() deleteCallback;

  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text(
          taskTitle,
        style: TextStyle(
          decoration: (isChecked ? TextDecoration.lineThrough : null),
        ),
      ),
      onLongPress: deleteCallback,
      trailing:  Checkbox(
        value: isChecked,
        onChanged: checkBoxCallback,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}