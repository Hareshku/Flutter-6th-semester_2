import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/HomePage.dart';
import 'package:flutter_shared_preferences/New_todo/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: todo_screen(),
    );
  }
}
