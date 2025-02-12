import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fourthscreen extends StatelessWidget {
  var data;
  Fourthscreen({Key?key, required this.data}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text("WelCome  $data"),
        ),
        ElevatedButton(
        onPressed: (){
    Navigator.pop(context);
    },
    child: Text("back"),
    ),
      ],
    );
  }
}
