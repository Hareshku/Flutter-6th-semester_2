import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'AddItems.dart';
import 'TodoItems.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Center(
            child: Text(
              "Todo App",
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<TodoNotifier>(
              builder: (context, todoNotifier, child) {
                return ListView.builder(
                  itemCount: todoNotifier.todos.length,
                  itemBuilder: (context, index) {
                    final todo = todoNotifier.todos[index];
                    return ListTile(
                      title: Text(todo['title'] ?? ""),
                      subtitle: Text(todo['description'] ?? ""),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          todoNotifier.deleteTodoAtIndex(index);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    minimumSize: const Size(30, 20)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddTodo(),
                    ),
                  );
                },
                child: const Text(
                  "Add Task",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    minimumSize: const Size(30, 20)),
                onPressed: () {
                  Provider.of<TodoNotifier>(context, listen: false)
                      .deleteAllTodos();
                },
                child: const Text("Delete All",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal)),
              ),
            ],
          )
        ],
      ),
    );
  }
}