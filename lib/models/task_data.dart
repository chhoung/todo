import 'package:flutter/foundation.dart';
import 'package:todo_app/models/task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Buy nintendo switch'),
    Task(name: 'Buy cyberpunk2077'),
    Task(name: 'Buy instant noodle'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String taskTitle){
    final Task task = new Task(name: taskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}