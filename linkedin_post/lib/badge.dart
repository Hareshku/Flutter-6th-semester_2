import 'package:flutter/material.dart';
import 'package:badges/badges.dart'as badges;
class Badeges extends StatefulWidget {
  const Badeges({super.key});

  @override
  State<Badeges> createState() => _BadegesState();
}

class _BadegesState extends State<Badeges> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("APP"),
        ),
        body: Column(
          children: [
            badges.Badge(
              badgeContent: Text('3'),
              child: Icon(Icons.settings),
            )
          ],
        ),
      ),
    );
  }
}
