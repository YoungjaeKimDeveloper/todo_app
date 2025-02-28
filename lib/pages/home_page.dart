import 'package:flutter/material.dart';
import "package:todo_app/util/todo_tile.dart";

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  // ? => it means nullable
  List toDoList = [
    ["Coding", false],
    ["코딩하기", false],
    ["编程", false],
    ["コーディング", false],
    ["Программирование", false],
  ];
  // void Function(bool?) onChanged = (bool? value) {};
  // checkbox was tappedr
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(title: Text("TO DO")),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
