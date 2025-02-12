import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'TodoItems.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final GlobalKey<FormState> _key = GlobalKey();
  final TextEditingController tc = TextEditingController();
  final TextEditingController dc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Center(
            child: Text(
              "Add Todo",
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            )),
      ),
      body: Form(
        key: _key,
        child: Column(children: [
          TextFormField(
            controller: tc,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Title",
            ),
          ),
          TextFormField(
            controller: dc,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Description",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                minimumSize: const Size(30, 20)),
            onPressed: () {
              if (_key.currentState!.validate()) {
                Provider.of<TodoNotifier>(context, listen: false)
                    .addTodo(tc.text, dc.text);
                Navigator.pop(context); // Go back to the todo list
              }
            },
            child: const Text(
              "Add",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          )
        ]),
      ),
    );
  }
}