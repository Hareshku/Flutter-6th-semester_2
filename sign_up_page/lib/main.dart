import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_up_page/screens/edit.dart';

import 'screens/login.dart';
import 'screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        // home: SignUpPage(),
      home: Account(),
        );

  }
}
