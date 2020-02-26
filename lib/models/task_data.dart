import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_app_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Brush Teeth and Face Wash'),
    Task(name: 'Meditation'),
    Task(name: 'Morning Exercise')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String name) {
    Task newTask = Task(name: name);
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
