import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_stm/todo_provider.dart';
import 'Todo_items.dart';

class EditTodoScreen extends StatefulWidget {
  final Todo todo;
  final int index;

  const EditTodoScreen({super.key, required this.todo, required this.index});

  @override
  _EditTodoScreenState createState() => _EditTodoScreenState();
}

class _EditTodoScreenState extends State<EditTodoScreen> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.todo.title);
    _descriptionController =
        TextEditingController(text: widget.todo.description);
    _selectedDate = widget.todo.date;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Todo"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Title"
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Description"
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                  ),
                  onPressed: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      initialDate: _selectedDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (selectedDate != null) {
                      setState(() {
                        _selectedDate = selectedDate;
                      });
                    }
                  },
                  child: const Text("Select Date",style: TextStyle(color: Colors.white),),
                ),

                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    Todo updatedTodo = Todo(
                      title: _titleController.text,
                      description: _descriptionController.text,
                      date: _selectedDate,

                    );
                    context
                        .read<TodoProvider>()
                        .updateData(updatedTodo, widget.index);
                    Navigator.pop(context);
                  },
                  child: const Text("Update Todo",style: TextStyle(color: Colors.white),),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
