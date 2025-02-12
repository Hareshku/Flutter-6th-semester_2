import 'package:flutter/material.dart';
import 'package:navigation_routing_14_16/second.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextButton(onPressed: (){
            // using push
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));

            // using Named route
            Navigator.pushNamed(context, "/SecondScreen");
          }, child: Text('Click me'),),

        ],
      ),
    );
  }
}
