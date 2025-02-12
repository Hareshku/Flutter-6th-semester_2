
import 'dart:async';
import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey=GlobalKey<FormState>();
  TextEditingController email= TextEditingController();
  TextEditingController password=TextEditingController();
  bool counter=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        // backgroundColor: Colors.pink,
               appBar: AppBar(
          title: Text("App Bar"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body:Column(
          children: [
            Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        key: _formKey,
                        controller: email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "email",
                          label: Text("Email"),
                        ),
                        onChanged: (value){
                          setState(() {
                            counter=true;
                          });
                        },
                        validator: (value){
                          if(value==''){
                            return "Email is required";
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        key: _formKey,
                        controller: password,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "email",
                          label: Text("Email"),
                        ),
                        onChanged: (value){
                          setState(() {
                            counter=true;
                          });
                        },
                        validator: (value){
                          if(value==''){
                            return "password is required";
                          }
                        },
                      ),
                    )
                  ],
                )
            ),
          ],
        ),
          floatingActionButton: FloatingActionButton(
              elevation: 20.0,
              child: Icon(Icons.add),
              onPressed:null,

          ),
      ),

    );
  }
}




                 // CONTAINER
// body: Container(
// width: double.infinity,
// height: 150.0,
// color: Colors.green,
// margin: EdgeInsets.all(25),
// padding: EdgeInsets.all(35),
// alignment: Alignment.center,
// // transform: Matrix4.rotationZ(0.1),
// child: Text("Hello! I am in the container widget!!",
// style: TextStyle(fontSize: 25)),
// ),

                 // LIST VIEW, DRAWER, LISTTILE, DIVIDER
// drawer: Drawer(
// child: ListView(
// children: [
// DrawerHeader(
// decoration: BoxDecoration(
// color: Colors.red,
// ),
// child:Center(child: Text("Header")),
// ),
//
// ListTile(
// leading: Icon(Icons.mail),
// title: Text('All Inbox mails'),
// ),
// Divider(
// height: 0.8,
// ),
// ListTile(
// title: Text("Primary"),
// ),
// ListTile(
// title: Text("Primary"),
// ),
// ListTile(
// title: Text("Primary"),
// ),
// ListTile(
// title: Text("Primary"),
// )
// ],
// ),
// ),

              // COLUMN

// Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// textDirection:TextDirection.rtl,
// mainAxisSize: MainAxisSize.min,
// textBaseline:TextBaseline.alphabetic,
// children: [
// Center(child: Text("Row widget")),
// Center(child: Text("rtl"),),
// Center(child: Text("rowwdf"),),
// Center(child: Text("Row widget")),
// Center(child: Text("rtl"),),
// Center(child: Text("rowwdfasddddddasassxz"),),
// ],
// ),

               //ROW
// Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// textDirection:TextDirection.rtl,
// mainAxisSize: MainAxisSize.min,
// verticalDirection:VerticalDirection.up,
// children: [
// Center(child: Text("Row widget")),
// Center(child: Text("rtl"),),
// Center(child: Text("rowwdf"),),
// Center(child: Text("Row widget")),
// Center(child: Text("rtl"),),
// Center(child: Text("rowwdfasddddddasassxz"),),
//
// ],
// ),