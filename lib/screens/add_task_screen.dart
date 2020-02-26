import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_flutter/models/task.dart';
import 'package:todo_app_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Add Your Task here'),
              onChanged: (value) {
                title = value;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(title);
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
