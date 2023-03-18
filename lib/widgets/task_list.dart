import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkBoxCallback: (bool? value) {
                taskData.update(index);
              },
              deleteCallback: (){
                taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      }
    );
  }
}


