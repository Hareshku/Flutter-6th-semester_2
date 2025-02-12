import 'package:flutter/material.dart';
import 'package:todo_stm/mad_lab_fb/add_todo.dart';
import 'package:todo_stm/mad_lab_fb/todo_db.dart';

import 'todo.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {

  TodoDatabase db= TodoDatabase();
  List<Todo> todos =[];
  @override
  void initState(){
    super.initState();
    _loadTodos();
  }
  _loadTodos() async{
    var todoslist = await db.getAllTodos();
    setState(() {
      todos =todoslist;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todos[index].title),
                  subtitle:
                      Text("""${todos[index].description} - 
                      ${todos[index].date}"""),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () async{
                      await db.deleteTodo(todos[index].id!);
                    },
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddTodo()
                    ),
                  ).then((_){_loadTodos();});
                },
                child: const Text("Add Task"),
              ),
              ElevatedButton(
                onPressed: () async{
                  await db.deleteAll();
                  _loadTodos();
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
