import 'package:flutter/material.dart';
import 'package:todo_app/util/button_custom.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.lightBlue[100],
      content: Container(
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Add New Task",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueGrey),
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Type your task here.."),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: onSave,
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: onCancel,
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
