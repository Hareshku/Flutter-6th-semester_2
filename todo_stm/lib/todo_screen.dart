import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_stm/todo_provider.dart';
import 'EditTodoScreen.dart';
import 'Todo_items.dart';
import 'add_todo.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List<Todo> todos =context.watch<TodoProvider>().todos; // performance wise its better to use consumer instead of using context.watch()
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            // for consumer this three lines are need to add.
            child: Consumer<TodoProvider>(
              builder: (context, todoProvider, child) {
                List<Todo> todos = todoProvider.todos;
                return ListView.builder(
                  itemCount: todos.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.orange,
                      child: ListTile(
                        title: Text(todos[index].title),
                        subtitle: Text("${todos[index]
                            .description} - ${(todos[index].date)
                            .toString()
                            .split(" ")[0]}"),
                        trailing: SizedBox(
                          width: 80,
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EditTodoScreen(
                                          todo: todos[index], index: index),
                                    ),
                                  );
                                },
                              ),

                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  context.read<TodoProvider>().deleteTodo(
                                      todos[index]);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddTodo(),
                    ),
                  );
                },
                child: const Text("Add Task"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<TodoProvider>().removeAll();
                },
                child: const Text("Delete All"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
