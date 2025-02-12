import 'package:flutter/material.dart';

class Snackbar extends StatefulWidget {
  const Snackbar({super.key});

  @override
  State<Snackbar> createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            action: SnackBarAction(
              label: 'sbar',
              onPressed: () {},
            ),
            content: Text('xyz'),
            duration: Duration(microseconds: 2000),
            padding: EdgeInsets.all(20),
          ));
        },
        child: Text("Snackbar"));
  }
}
