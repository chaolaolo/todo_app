import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/data/database.dart';
import 'package:todo_app/util/dialog_box.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //reference the hive box
  final _myBox = Hive.box('myBox');
  TodoDatabase db = TodoDatabase();

  @override
  void initState() {
    // if this is 1st time open app then create default data
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      // there already exists data
      db.loadData();
    }

    super.initState();
  }

  final _controller = TextEditingController();

  // list task
  // List todoList = [
  //   ["have breakfast", false],
  //   ["go to school", true],
  //   ["buy flower", true],
  //   ["hang out", true],
  //   ["cooking", false],
  // ];

  //tapped checkbox
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.todoList[index][1] = !db.todoList[index][1];
    });
    db.updateData();
  }


  void saveTask() {
    setState(() {
      db.todoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateData();
  }

  //add new task
  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

void deleteTask(int index){
    setState(() {
      db.todoList.removeAt(index);
    });
    db.updateData();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('To Do'),
        elevation: 0,
        backgroundColor: Colors.blueAccent[400],
      ),
      body: ListView.builder(
          itemCount: db.todoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              taskName: db.todoList[index][0],
              taskCompleted: db.todoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
              deletetask: (BuildContext context)=>deleteTask(index),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

}
