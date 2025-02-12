import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_stm/todo_provider.dart';

import 'Todo_items.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final GlobalKey<FormState> _key = GlobalKey();
  final TextEditingController tc = TextEditingController();
  final TextEditingController dc = TextEditingController();
  DateTime date = DateTime.now(); // make a date picker variable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _key,
          child: Column(children: [
            TextFormField(
              controller: tc,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Title",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: dc,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Description",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Row(
                children: [
                  // Text("${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}"),
                  ElevatedButton(
                    onPressed: () async {
                      final DateTime? dateTime = await showDatePicker(
                        context: context,
                        initialDate: date,
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2030),
                      );
                      if (dateTime != null) {
                        setState(() {
                          date = dateTime;
                        });
                      }
                    },
                    child: const Text("Choose date"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if(_key.currentState!.validate()){
                        final todo= Todo(
                          title: tc.text,
                          description: dc.text,
                          date: date,
                        );
                        context.read<TodoProvider>().addTodo(todo);
                        Navigator.pop(context);
                      }
                    },
                    child: const Text("Add"),
                  )
                ],
              ),
            ),

          ]),
        ),
      ),
    );
  }
}
