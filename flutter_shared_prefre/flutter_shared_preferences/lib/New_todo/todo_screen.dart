import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class todo_screen extends StatefulWidget {
  const todo_screen({super.key});

  @override
  State<todo_screen> createState() => _todo_screenState();
}

class _todo_screenState extends State<todo_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app"),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
