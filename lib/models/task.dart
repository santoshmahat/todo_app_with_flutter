class Task {
  String name;
  bool isDone = false;

  Task({this.name});

  void toggleDone() {
    this.isDone = !this.isDone;
  }
}
