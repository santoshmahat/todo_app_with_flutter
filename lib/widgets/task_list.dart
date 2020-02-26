import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_flutter/models/task.dart';
import 'package:todo_app_flutter/models/task_data.dart';
import 'package:todo_app_flutter/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          Task task = taskData.tasks[index];
          return TaskTile(
              title: task.name,
              isChecked: task.isDone,
              callback: (value) {
                taskData.updateTask(task);
              },
              onLongPressCallback: () {
                taskData.removeTask(task);
              });
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
