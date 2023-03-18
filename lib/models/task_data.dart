import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy condoms'),
    Task(name: 'Buy diapers'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String nameTitle){
    _tasks.add(Task(name: nameTitle));
    notifyListeners();
  }

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }

  void update(int index){
    _tasks[index].toggleDone();
    notifyListeners();
  }

  int get taskCount => _tasks.length;
}