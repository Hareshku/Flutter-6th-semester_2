import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenheight=MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
              appBar: AppBar(
                title: Text("AppBar"),
                backgroundColor: Colors.orange,
                centerTitle: true,
              ),
              body: Row(
                children: [
                  Container(
                    width: screenWidth*0.20,
                    height:screenheight,
                    color: Colors.blue,
                  ),
                  Container(
                    width: screenWidth*0.20,
                    height:screenheight,
                    color: Colors.red,
                  ),
                  Container(
                    width: screenWidth*0.20,
                    height:screenheight,
                    color: Colors.green,
                  ),Container(
                    width: screenWidth*0.20,
                    height:screenheight,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: screenWidth*0.20,
                    height:screenheight,
                    color: Colors.pink,
                  ),

                ],
              ),
         )
    );
  }
}
