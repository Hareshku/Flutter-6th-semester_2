import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_routing_14_16/fourthScreen.dart';

class Thirdscreen extends StatefulWidget {
  const Thirdscreen({super.key});

  @override
  State<Thirdscreen> createState() => _ThirdscreenState();
}

class _ThirdscreenState extends State<Thirdscreen> {
  var controller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Fourthscreen(data: controller.text.toString())));
              },
              child: Text("Submit"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
            Container(
              width: 300,
              height: 200,
              color: Colors.blue,
            ),
            TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Name',
                label: Text("Name"),
                border: OutlineInputBorder(),
              ),
            )
          ],
        ),
      )

    );
  }
}
