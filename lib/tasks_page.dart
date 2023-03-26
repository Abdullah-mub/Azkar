// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:intro_flutter/data/tasks_data.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  static const routeName = "/tasks-page";

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  List<Widget> tasks = [];

  TextEditingController taskInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //Scaffold اساس اي صفحه
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.menu, color: Colors.white),
          )
        ],
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.amber,
            width: double.infinity,
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Image.asset(
                        "assets/praying.png",
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "8 Tasks",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              height: 9),
                        ),
                        Text(
                          "Personal",
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              height: 0.1),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(children: tasks),
                SizedBox(
                  width: 100,
                  child: TextField(
                    controller: taskInput,
                  ),
                ),
                ElevatedButtonTheme(
                  data: ElevatedButtonThemeData(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.amber),
                    ),
                  ),
                  child: ElevatedButton(
                    child: Text("Add"),
                    onPressed: () {
                      setState(() {
                        tasks.add(MainCheckBox(task: taskInput.text));
                      });
                      taskInput.clear();
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MainCheckBox extends StatefulWidget {
  const MainCheckBox({super.key, required this.task});
  final String task;
  @override
  State<MainCheckBox> createState() => _MainCheckBoxState();
}

class _MainCheckBoxState extends State<MainCheckBox> {
  bool checkboxIsClicked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: checkboxIsClicked,
          onChanged: (value) {
            setState(() {
              checkboxIsClicked = value!;
            });
          },
        ),
        Text(
          widget.task,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: checkboxIsClicked == true ? Colors.grey : Colors.black,
            decoration: checkboxIsClicked == true
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
      ],
    );
  }
}
