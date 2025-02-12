import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_routing_14_16/second.dart';
import 'package:navigation_routing_14_16/third.dart';

import 'home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),

      // for Named routes
      initialRoute: '/HomePage',
      routes: {
        "/HomePage":(context)=>HomePage(),
        "/SecondScreen" : (context)=>SecondScreen(),
        "/Thirdscreen":(context)=>Thirdscreen(),
      },
    );
  }
}

