import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  String title;
  bool isChecked = false;
  Function callback;
  Function onLongPressCallback;

  TaskTile(
      {this.title, this.isChecked, this.callback, this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallback,
      title: Text(
        title,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: callback,
      ),
    );
  }
}
