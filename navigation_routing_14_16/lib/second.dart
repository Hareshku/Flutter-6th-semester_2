import 'package:flutter/material.dart';
import 'package:navigation_routing_14_16/third.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("SecondScreen"),
          ElevatedButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Thirdscreen()));
            Navigator.pushNamed(context, '/Thirdscreen');
          }, child: Text("click me")),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back"))
        ],
      ),
    );
  }
}
