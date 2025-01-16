import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];

  //reference our box
  final _myBox = Hive.box('myBox');

  //create initial data
  //run this method in 1st time open app
  void createInitialData() {
    todoList = [
      ["have breakfast", false],
      ["go to school", true],
      ["buy flower", true],
      ["hang out", true],
      ["cooking", false],
    ];
  }

  //load data from database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

//update the database
  void updateData() {
    _myBox.put("TODOLIST", todoList);
  }
}
