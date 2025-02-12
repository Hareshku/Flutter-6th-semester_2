import 'package:flutter/material.dart';

import 'Todo_items.dart';

class TodoProvider with ChangeNotifier{
  List<Todo> _todos=[
    Todo(
      title: "Todo",
      description: "Description",
      date: DateTime.now(),
    )
  ];

  // geter n=method
  List<Todo> get todos=>_todos;

  //add method
  void addTodo(Todo todo){
    _todos.add(todo);
    notifyListeners();
  }

  void updateData(Todo updatedData, int index){
    _todos[index]=updatedData;
    notifyListeners();
  }

  void deleteTodo(Todo todo){
    _todos.remove(todo);
    notifyListeners();
  }

  removeAll(){
    _todos.clear();
    notifyListeners();
  }
}