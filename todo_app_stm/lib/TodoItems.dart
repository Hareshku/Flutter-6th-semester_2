import 'package:flutter/foundation.dart';

class TodoNotifier with ChangeNotifier {
  List<Map<String, String>> todos = [];

  void addTodo(String title, String description) {
    todos.add({'title': title, 'description': description});
    notifyListeners();
  }

  void deleteTodoAtIndex(int index) {
    todos.removeAt(index);
    notifyListeners();
  }

  void deleteAllTodos() {
    todos.clear();
    notifyListeners();
  }
}