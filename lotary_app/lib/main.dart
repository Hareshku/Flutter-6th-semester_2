// 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x=0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.deepPurple,
          title: const Text("Lotary app"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: x==2?Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text('lotary winning number is $x'),
              ),
             const  SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color:x==2?Colors.green.withOpacity(.3):Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 250,
                height: 300,
                // color: x==2?Colors.grey.withOpacity(.3):Colors.green,
                child: Center(
                 child:  Text('Your selected number is $x\n congratulation you won the lotary ', textAlign: TextAlign.center,),
                ),


              )
            ],

          ):Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Center(
        child: Text('lotary winning number is 2'),
      ),
      const SizedBox(height: 20,),
      Container(
        width: 250,
        height: 300,
        color: Colors.grey.withOpacity(.3),
        child: Center(
          child:  Text('Your selected number is $x\n better luck next time '),
        ),


      )
      ],

    ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x=random.nextInt(3);
            setState(() {

            });
            print("Random Number generated is"+ x.toString());
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}






//
// class MyApp extends StatelessWidget {
//    MyApp({super.key});
//   int  a=0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//        title:const Text('App Bar'),
//           centerTitle: true,
//           backgroundColor: Colors.deepPurple,
//         ),
//         body: SafeArea(
//           child: Center(
//             child: Text(a.toString(), style: const TextStyle(fontSize: 50),),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: (){
//             a++;
//             print(a.toString());
//           },
//           child:const Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }





 // StateFull widget used when UI is frequently changing.
// 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MyApp());
// }
//
// int a=0;
// class MyApp extends StatefulWidget {
//   MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title:const Text('App Bar'),
//           centerTitle: true,
//           backgroundColor: Colors.deepPurple,
//         ),
//         body: SafeArea(
//           child: Center(
//             child: Text(a.toString(), style: TextStyle(fontSize: 50),),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: (){
//             a++;
//             setState(() {
//
//             });
//             print(a);
//           },
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
//
