
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'home.dart';
//
// void main(){
//   runApp(MyApp());
// }
// class MyApp extends StatefulWidget {
//   MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   bool Male= false;
//
//   bool  Female =false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:DefaultTabController(
//         length: 5,
//         child: Scaffold(
//             drawer: Drawer(
//             child: ListView(
//           children: [
//           DrawerHeader(
//           child: ListTile(
//           leading: CircleAvatar(
//             backgroundImage: NetworkImage(
//             'http://ts3.mm.bing.net/th?id=OIP.n5CeR93916slWXGyV13PuAHaHa&pid=15.1'),
//             ),
//             title: Text('Name'),
//             subtitle: Text("Biography"),
//             )),
//             ListTile(
//             title: Text('Home'),
//             leading: Icon(Icons.home),
//             ),
//             ListTile(
//             title: Text('setting'),
//             leading: Icon(Icons.settings),
//             ),
//             ListTile(
//             title: Text('profile'),
//             leading: Icon(Icons.person),
//             ),
//             ListTile(
//             title: Text('logout'),
//             leading: Icon(Icons.alarm),
//             )
//             ],
//             ),
//             ),
//             appBar: AppBar(
//             bottom:const TabBar(
//             tabs: [
//             Tab( icon: Icon(Icons.home),text: 'Home',),
//             Tab(icon: Icon(Icons.settings),text: 'About'),
//             Tab(icon: Icon(Icons.account_circle),text: 'Projects'),
//             Tab(icon: Icon(Icons.notification_add),text: 'Notifications'),
//             ],
//             labelPadding: EdgeInsets.zero,
//             ),
//             toolbarTextStyle: TextStyle(color: Colors.white),
//             title: Text("App Bar"),
//             centerTitle: true,
//             backgroundColor: Colors.orange,
//             leading: const Icon(
//             Icons.widgets,
//             color: Colors.amber,
//             ),
//             actions: [
//             IconButton(onPressed: (){}, icon: Icon(Icons.add_alert, color: Colors.white,),),
//             IconButton(onPressed: (){}, icon: Icon(Icons.person, color: Colors.white,),),
//             ],
//             ),
//             body: Column(
//             children: [
//             // Expanded(
//             // child: ListView.builder(
//             // padding: EdgeInsets.all(20),
//             // itemCount: 4,
//             // itemBuilder: (context, index){
//             // return Card(
//             // color: Colors.pink,
//             // child: ListTile(
//             // title: Text('fdfsdfds'),
//             // subtitle: Text('Bio'),
//             // leading: CircleAvatar(
//             // backgroundColor: Colors.blue,
//             // backgroundImage: NetworkImage('http://ts3.mm.bing.net/th?id=OIP.n5CeR93916slWXGyV13PuAHaHa&pid=15.1'),
//             // ),
//             // trailing: Icon(Icons.star),
//             // ),
//             // );
//             // },
//             // )
//             // ),
//             // Image.network('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAGoApwMBIgACEQEDEQH/xAAaAAACAwEBAAAAAAAAAAAAAAACAwABBAUG/9oACAEBAAAAAMkDtasx83FItMfJCPTyC2dF66eNIyoWcEpOp5xmrc+wcepGDEMbYhNvIYetjRzbGrOkQyLXE+Ze5nTzc5ufqP2a8g6RALZ4fbt3asGZnU00K6MVUCh81pvX0doYOwd0IEsQSlfOe17AoWFUi7iwSura55ADIuVJBpa1qJjXGvSqzUDKqCAJCNddPYk7sYAWFCCbbGnuzBDK6CCiqERkc18tAXYwQgBVzVnvZqyVnYBLtgJcgR//xAAYAQADAQEAAAAAAAAAAAAAAAAAAQIDBP/aAAoCAhADEAAAAGmA0DQJpxWVb5UgBAITmorGurEIpEuwAQnlV8eSjSm6uaTG6VPn5sM1ZosaAHT1u7U5wupZzzJsouqu7UvXLeOTSBDZV1Qf/8QAMBAAAgIBAwIEBQQBBQAAAAAAAQIAEQMSIUEEMRMiUXEUMlKBkRAzQmFDNFNicqH/2gAIAQEAAT8A6fIMPYXc6jOHIqwJifSZhcOAZ8q2O3M8RS2xqNlIGljYmbAr7pXtGwEQYYccKQ44qQCaf0qBZZCOqj5hU6bpQVJgybd4DqmPSCOZjYxnoVMQGrUY2vI1E0OJiwLW5jYVDaYenj4I+KoygCVBVwyoohaor7ixMDYSuw3gxMYuNhMYqI9cwODD22gBB3gdhsDFu7LRWUwsG8p7zOTZFQq0YGqiYyYMU8MCFTNJi4tR3i9HnXdGBuYm2qFyBURr7iY8Zy0qkA+sbp8yEGwREBA3j5lVNS0STQBmTqn2ZTQ7GJnxHbULnjVBk80KeI3lh6Yi4cBB3gSuwioeYcRmPAGNEiJ0Sg2SI/SYuJ8K54NTGdfyiKr/AEGFGUWVmNmHExvrADCPlrWuh+QhrvNLIym6Yj3IiojhmCNsntLC7gsDwYmBmoCL0uQcTEnhwuCO0bGrbt3i4Bewi4VHcCHHjs3tKUDaeKwi5yJ418wBb71/YmPPmQDcMsx9RiydyE9+0TpwaIqY8SA7rOtxdQ+VRjxGgIMR6dUchNbLdHgTDkUlWdSDtE6bChO12KozSQQVAhL3HYk+k1kTWTxA5jMfWWfWaj6wsYWniQPELkbFBtzCW5ABmHqM+EBcbe4qYuv2rIn3EXqcLbDII5xZwQjrqPMwdMA9LkVhrby80DAQAB3ga5ajvC638sLIe6mWvCTUo7pCy38pqMcfAaEY/wDl+IwHEZTCDFF/wX8QKvOJPxNCHvhT8QInOJfxNGP6F/EYYh/AQridTSgXyJjxnFWjKRQ9BBkzqP8AUMfcCfEZfrM+Iy/WZ8Rm/wBw/gT4nN9f/ghysxJZiYMzr2Yw58x/ykewEOTLpC+M1CNlyllY5T5ZkfK9Xnfa4HyIxZczWQAee0HUZlvz3ZvcQGK0BgMBhO9XRjUH8pv1gb9H1LRqxAQZv+l/pZ9ITGJEJ9RGqGAj1gDCKdoGYjYy/wC5fn7zIQFTcWZqI794PWekdN7UgGa6NMd5e3eFl5lrLUTVQhZfSWDcZh6S0J7QFbO0VhUUoWjWO29mF2UG4iIaBo9jM40mtXcXUG7k+kHrxKJ2uDi4cSEEngwqCp4gx9wDcPlYjTzDVbzY2K5jCqMYE9hxcr1EdRFUfeoqptCoHmEDEMRFBdtAHYC4vTaAScjAVMgGvUTqMYHXENaoHFgQtyfWWCJdE7+81gfeF1YU0YLQAFQt3BE3Kkcwk0d94SavnbaH7RFIJECPq/oQNuBwZkvyEd2AmJQrA0T6HvFyszUQwI2G8YnWNqsbxnTWDGJ0AAxHNC+wjZDuSYXoexniWTZ5ha2B5HH9zVarXeDIfe4SLNESyu18bTxN++whbeBuDPT2n8D7GY+6y/l9pi/dC8EmxOqAVgFAA8KAnV34MPyn2Mfj7zlf+0/ifvD8i/eEnQnuY/fJ7CD/ABxv219jE7n2Mf5l9ooGp/eZe6Qce0//xAAmEQACAQQABQQDAAAAAAAAAAAAARECAxIhEBMgMVFCUmFiQZHx/9oACAECAQE/AI2d+HYnoYxtz0SuHYyQ2OoquQjNv+GUGaRmOv8AIrvhGTfDYqR0sdup+ur9lVxe0d5e05yfpYrtMNOUKuheRXbf2FdtfY5tr5Fct+WcygypHSVUio2RKR2I8EECQuDggcL4YloaNik8ECExuBraGpkgx0YrRijR20QpGj//xAAiEQACAQMFAQADAAAAAAAAAAAAARECAxIQEyExUSAiQWH/2gAIAQMBAT8Akkk71nRfXJJ2QxIgSIOCJMSB0EJaySZLxDu0+Cur9SK8K9SO/Qb1JvL03V6bi9RkvTL+jpOUUS6kX1jXx9LSqDHws2sfyaL8MaFrAiSSmlTI+EXe4I4MUYoheHXBCkaP/9k='),
//             Column(
//             children: [
//             Center(
//             child: Padding(
//             padding: const EdgeInsets.only(left: 20, top: 100),
//             child: Container(
//
//
//
//             color: Colors.red,
//             width: 300,
//             height: 300,
//             child: Text(
//             "Container dsffsddsdfds",
//             style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//             ),
//             ),
//             ),
//             Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//             child: SizedBox(
//             width: double.infinity,
//             child: ElevatedButton(
//             style: ButtonStyle(
//             backgroundColor: WidgetStateProperty.all(Colors.yellow),
//             ),
//             onPressed: () {
//             print("Button Clicked");
//             // Navigator.push(context, MaterialPageRoute(builder: (context)=>Snackbar()));
//             },
//             child: Text("Click", style: TextStyle(color: Colors.blue),),
//             ),
//             ),
//             ),
//             ],
//             ),
//
//             // Container(
//             //   child: SingleChildScrollView(
//             //     scrollDirection: Axis.vertical,
//             //     child: Stack(
//             //       children: [
//             //         Container(
//             //           width: 300,
//             //           height: 300,
//             //           child: Text("container1"),
//             //           color: Colors.red,
//             //         ),
//             //         Container(
//             //           width: 250,
//             //           height: 250,
//             //           child: Text("container1"),
//             //           color: Colors.blue,
//             //         ),
//             //         Container(
//             //           width: 200,
//             //           height: 200,
//             //           child: Text("container1"),
//             //           color: Colors.red,
//             //         ),
//             //         Container(
//             //           width: 100,
//             //           height: 100,
//             //           child: Text("container1"),
//             //           color: Colors.yellow,
//             //         ),
//             //       ],
//             //     ),
//             //   ),
//             // ),
//             // Row(
//             // children: [
//             // ElevatedButton(
//             // style: ButtonStyle(
//             // backgroundColor: WidgetStateProperty.all(Colors.yellow),
//             // ),
//             // onPressed: () {
//             // print("Button Clicked");
//             // // Navigator.push(context, MaterialPageRoute(builder: (context)=>Snackbar()));
//             // },
//             // child: Text("Click", style: TextStyle(color: Colors.blue),),
//             // ),
//             // ElevatedButton(
//             // style: ButtonStyle(
//             // backgroundColor: WidgetStateProperty.all(Colors.yellow),
//             // ),
//             // onPressed: () {
//             // print("Button Clicked");
//             // // Navigator.push(context, MaterialPageRoute(builder: (context)=>Snackbar()));
//             // },
//             // child: Text("Click", style: TextStyle(color: Colors.blue),),
//             // ),
//             // ElevatedButton(
//             // style: ButtonStyle(
//             // backgroundColor: WidgetStateProperty.all(Colors.yellow),
//             // ),
//             // onPressed: () {
//             // print("Button Clicked");
//             // // Navigator.push(context, MaterialPageRoute(builder: (context)=>Snackbar()));
//             // },
//             // child: Text("Click", style: TextStyle(color: Colors.blue),),
//             // ),
//             // ElevatedButton(
//             // style: ButtonStyle(
//             // backgroundColor: WidgetStateProperty.all(Colors.yellow),
//             // ),
//             // onPressed: () {
//             // print("Button Clicked");
//             // // Navigator.push(context, MaterialPageRoute(builder: (context)=>Snackbar()));
//             // },
//             // child: Text("Click", style: TextStyle(color: Colors.blue),),
//             // ),
//             // ],
//             // )
//
//               Column(
//                 children: [
//             Row(
//                 children: [
//                   Text("Select Gender"),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text("Male"),
//                   Checkbox(
//                       value: Male,
//                       onChanged: (bool? value) {
//                         setState(() {
//                           Male = value!;
//                         });
//                       }),
//                   Text("Female"),
//                   Checkbox(
//                       value: Female,
//                       onChanged: (bool? value) {
//                         setState(() {
//                           Female = value!;
//                         });
//                       }),
//                 ],
//               ),
//                 ],
//               ),
//             ],
//             ),
//
//             floatingActionButton: FloatingActionButton(
//             onPressed: (){},
//             child: Text('add'),
//             backgroundColor:Colors.blue,
//             hoverColor: Colors.yellow,
//             ),
//             floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//
//             ),
//       )
//     );
//   }
// }

























import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> item = [
    'item1',
    'item2',
    'item3',
    'item4',
    'item1',
    'item2',
    'item3',
    'item4',
    'item1',
    'item2',
    'item3',
    'item4',
    'item1',
    'item2',
    'item3',
    'item4',
    'item1',
    'item2',
    'item3',
    'item4',
    'item1',
    'item2',
    'item3',
    'item4',
    'item1',
    'item2',
    'item3',
    'item4'
  ];
  List<String> items = ['Android', 'apple', 'Mac'];
  String? chooseVal;
  int counter = 0;
  bool Male = false;
  bool Female = false;
  String? gender;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          drawer: Drawer(
            backgroundColor: Colors.pink,
            child: ListView(
              children: [
                DrawerHeader(
                    child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'http://ts3.mm.bing.net/th?id=OIP.n5CeR93916slWXGyV13PuAHaHa&pid=15.1'),
                  ),
                  title: Text('Name'),
                  subtitle: Text("Biography"),
                )),
                ListTile(
                  title: Text("Phone"),
                  leading: Icon(Icons.phone),
                ),
                ListTile(
                  title: Text('Email'),
                  leading: Icon(Icons.email),
                )
              ],
            ),
          ),
          appBar: AppBar(
            // TabBar
            // bottom:const TabBar(
            // tabs: [
            // Tab( icon: Icon(Icons.home),text: 'Home',),
            // Tab(icon: Icon(Icons.settings),text: 'About'),
            // Tab(icon: Icon(Icons.account_circle),text: 'Projects'),
            // Tab(icon: Icon(Icons.notification_add),text: 'Notifications'),
            // ],
            // labelPadding: EdgeInsets.zero,
            // ),
            toolbarTextStyle: TextStyle(color: Colors.white),
            title: Text("App Bar"),
            centerTitle: true,
            backgroundColor: Colors.orange,
            // leading: const Icon(
            //   Icons.widgets,
            //   color: Colors.amber,
            // ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
              IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
              IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
              IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_rounded)),
              PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(value: 1, child: Text('home')),
                    PopupMenuItem(value: 2, child: Text('settings')),
                    PopupMenuItem(value: 3, child: Text('about'))
                  ];
                },
                onSelected: (value) {
                  if (value == 1) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("You selected home"),
                      duration: Duration(microseconds: 3000),
                      // padding: EdgeInsets.all(20),
                    ));
                  } else if (value == 2) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("You selected settings"),
                      duration: Duration(microseconds: 3000),
                      // padding: EdgeInsets.all(20),
                    ));
                  } else if (value == 3) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("You selected about"),
                      duration: Duration(microseconds: 3000),
                      // padding: EdgeInsets.all(20),
                    ));
                  }
                },
              )
            ],
            actionsIconTheme: const IconThemeData(color: Colors.blue, size: 20),
          ),
          body: Column(
            children: [
              Center(
                child: Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.blue,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        for (int i = 0; i <= 10; i++)
                          Container(
                            width: double.infinity,
                            height: 20,
                            color: Colors.red,
                            margin: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              right: 10,
                              left: 10,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),

//               Center(
// child: Container(
// width: double.infinity,
// height: 200,
// color: Colors.red,
// margin: EdgeInsets.all(40),
// child: SingleChildScrollView(
// child: Column(
// children: [
// for(int i=0; i<=10; i++)
// Container(
// width: double.infinity,
// color: Colors.blue,
// margin: EdgeInsets.all(10),
// height: 20,
// )
//
// ],
// ),
// ),
//
// ),
// ),

              DropdownButton(
                value: chooseVal,
                items: items.map<DropdownMenuItem<String>>(
                  (String? value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value!),
                    );
                  },
                ).toList(),
                hint: Text('Please chose the platform'),
                onChanged: (value) {
                  setState(() {
                    chooseVal = value;
                  });
                },
              ),

              // TextFormField
// Padding(padding: EdgeInsets.only(
// top: 100,
// left: 20,
// right: 20,
// ),
// child: TextFormField(
// decoration: InputDecoration(
// hintText: 'Name',
// label: Text("Name"),
// enabledBorder: OutlineInputBorder( //change the outline border color
// borderRadius: BorderRadius.circular(15),
// borderSide: BorderSide(color: Colors.blue,width: 2)
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(15),
// borderSide: BorderSide(color: Colors.red,width: 2)
// ),
// fillColor: Colors.grey,
// ),
//
// ),
// ),

              Center(
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.green,
                ),
              ),
              //Slider
// first define a couter variable of type int
              Slider(
                  value: counter.toDouble(),
                  min: 0,
                  max: 10,
                  divisions: 10,
                  label: counter.round().toString(),
                  onChanged: (value) {
                    setState(
                      () {
                        counter = value.toInt();
                      },
                    );
                  }),

              Column(
                children: [
                  Text("Select Gender"),
                  RadioListTile(
                    title: Text("Male"),
                    value: 'Male',
                    groupValue: gender,
                    onChanged: (String? value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("Female"),
                    value: 'Female',
                    groupValue: gender,
                    onChanged: (String? value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("Other"),
                    value: 'Other',
                    groupValue: gender,
                    onChanged: (String? value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                ],
              ),

              Row(
                children: [
                  Text("Select Gender"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Male"),
                  Radio(
                      value: "Male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      }),
                  Text("F-Male"),
                  Radio(
                      value: "F-Male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      }),
                ],
              ),
              Row(
                children: [
                  Text("Select Gender"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Male"),
                  Checkbox(
                      value: Male,
                      onChanged: (bool? value) {
                        setState(() {
                          Male = value!;
                        });
                      }),
                  Text("Female"),
                  Checkbox(
                      value: Female,
                      onChanged: (bool? value) {
                        setState(() {
                          Female = value!;
                        });
                      }),
                ],
              ),

              // TabBarView(children: [
              //   Icon(Icons.flight),
              // ]),
              // Expanded(
              //   // flex: 2,
              //   child: Container(
              //     child: ListView(
              //       padding: EdgeInsets.all(50),
              //       scrollDirection: Axis.vertical,
              //       children: [
              //         Image.network(
              //             'https://th.bing.com/th/id/OIP.acu_mTgbJF2K0dfy8AqXLwAAAA?pid=ImgDet&w=178&h=267&c=7&dpr=1.5'),
              //         Image.network(
              //             'https://th.bing.com/th/id/OIP.acu_mTgbJF2K0dfy8AqXLwAAAA?pid=ImgDet&w=178&h=267&c=7&dpr=1.5'),
              //         Image.network(
              //             'https://th.bing.com/th/id/OIP.acu_mTgbJF2K0dfy8AqXLwAAAA?pid=ImgDet&w=178&h=267&c=7&dpr=1.5'),
              //         ListTile(
              //           title: Text('Profile'),
              //           leading: Icon(Icons.person),
              //         ),
              //         ListTile(
              //           title: Text('settings'),
              //           leading: Icon(Icons.settings),
              //         ),
              //         ListTile(
              //           title: Text('Update'),
              //           leading: Icon(Icons.update),
              //         ),
              //         ListTile(
              //           title: Text('Alert'),
              //           leading: Icon(Icons.add_alert),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => setState(() {
              counter++;
            }),
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ),
      ),
    );
  }
}

// //TextButton
// //outside padding
// //             padding: const EdgeInsets.only(
// //               top: 100,
// //               left: 20,
// //               right: 20,
// //             ),
// //             child: SizedBox(
// //               // used for giving height and width according to our need
// //               width: double.infinity, // will take the 100% of th screen
// //               height: 30,
// //               child: TextButton(
// //                 style: ButtonStyle(
// //                   // giving style to the button like text color, bg color, padding etc.
// //                     alignment: Alignment.center,
// //                     foregroundColor: WidgetStateProperty.all(Colors.blue),
// //                     backgroundColor:
// //                     WidgetStateProperty.all(Colors.deepPurple),
// //                     padding: WidgetStateProperty.all(EdgeInsets.all(15))),
// //                 onPressed: () {},
// //                 child: Text("TextButton"),
// //               ),
// //             ),
// //           ),
// //
// // Elevated button
// //           Padding(
// //             padding: const EdgeInsets.only(
// //               top: 20,
// //               left: 20,
// //               right: 20,
// //             ),
// //             child: SizedBox(
// //               width: 300,
// //               child: ElevatedButton(
// //                 style: ButtonStyle(
// //                     foregroundColor: WidgetStateProperty.all(Colors.blue),
// //                     backgroundColor: WidgetStateProperty.all(Colors.grey),
// //                     padding: WidgetStateProperty.all(
// //                       EdgeInsets.all(15),
// //                     )),
// //                 onPressed: () {},
// //                 child: Text('Elevated'),
// //               ),
// //             ),
// //           ),
// //
// // Outlined button
// //           Padding(
// //             padding: const EdgeInsets.only(
// //               top: 30,
// //               left: 20,
// //               right: 20,
// //             ),
// //             child: SizedBox(
// //               width: double.infinity,
// //               // height: 30,
// //               child: OutlinedButton(
// //                 onPressed: () {},
// //                 child: Text("Outlined"),
// //                 style: ButtonStyle(
// //                   side: WidgetStateProperty.all(
// //                     BorderSide(color: Colors.red, width: 2),
// //                   ),
// //                   alignment: Alignment.center,
// //                   foregroundColor: WidgetStateProperty.all(Colors.red),
// //                   // backgroundColor: WidgetStateProperty.all(Colors.pink),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           // Padding(padding: const EdgeInset.a),
//
// //IconButtons
// //           Padding(padding: const EdgeInsets.only(
// //             top: 20,
// //             right: 20,
// //             left: 20,
// //           ),
// //             child: SizedBox(
// //               width: double.infinity,
// //               child: IconButton(
// //                 highlightColor: Colors.red,
// //                 hoverColor: Colors.pink,
// //                 onPressed: () {},
// //                 icon: Icon(Icons.favorite),
// //                 color: Colors.pink,
// //                 padding: EdgeInsets.all(10),
// //                 style: ButtonStyle(
// //                   backgroundColor: WidgetStateProperty.all(Colors.blue),
// //                   foregroundColor: WidgetStateProperty.all(Colors.yellow),
// //                 ),
// //               ),
// //             ),
// //           ),
//
// //ListView.builder
// // Expanded(
// //     child: ListView.builder(
// //       padding: EdgeInsets.all(20),
// //       itemCount: item.length,
// //       itemBuilder: (context, index){
// //       return Card(
// //         color: Colors.pink,
// //         child: ListTile(
// //           title: Text(item[index],style: TextStyle(color: Colors.white, fontSize: 20),),
// //           subtitle: Text('Bio',style: TextStyle(color: Colors.blue, fontSize: 20),),
// //           leading: CircleAvatar(
// //             backgroundImage: NetworkImage('http://ts3.mm.bing.net/th?id=OIP.n5CeR93916slWXGyV13PuAHaHa&pid=15.1'),
// //           ),
// //           trailing: Icon(Icons.star),
// //         ),
// //       );
// //     },
// //
// //     ),
// // ),
//
// // Row and icon
// //           Row(
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               Icon(
// //                 Icons.favorite,
// //                 color: Colors.pink,
// //                 size: 24,
// //                 semanticLabel: 'love',
// //               ),
// //               Icon(
// //                 Icons.home,
// //                 color: Colors.pink,
// //                 size: 24,
// //                 semanticLabel: 'home',
// //               ),
// //               Icon(
// //                 Icons.settings,
// //                 color: Colors.pink,
// //                 size: 24,
// //                 semanticLabel: 'love',
// //               ),
// //               Icon(
// //                 Icons.notification_add,
// //                 color: Colors.pink,
// //                 size: 24,
// //                 semanticLabel: 'love',
// //               )
// //             ],
// //           ),
//
// // listView and ListTle and images
//
// //     Expanded(
// //       // flex: 2,
// //       child: Container(
// //         child:  ListView(
// //           padding: EdgeInsets.all(50),
// //           scrollDirection: Axis.vertical,
// //           children: [
// //             // Image.network('https://th.bing.com/th/id/OIP.acu_mTgbJF2K0dfy8AqXLwAAAA?pid=ImgDet&w=178&h=267&c=7&dpr=1.5'),
// //             // Image.network('https://th.bing.com/th/id/OIP.acu_mTgbJF2K0dfy8AqXLwAAAA?pid=ImgDet&w=178&h=267&c=7&dpr=1.5'),
// //             // Image.network('https://th.bing.com/th/id/OIP.acu_mTgbJF2K0dfy8AqXLwAAAA?pid=ImgDet&w=178&h=267&c=7&dpr=1.5'),
// //                ListTile(
// //                  title: Text('Profile'),
// //                  leading: Icon(Icons.person),
// //                ),
// //             ListTile(
// //               title: Text('settings'),
// //               leading: Icon(Icons.settings),
// //             ),
// //             ListTile(
// //               title: Text('Update'),
// //               leading: Icon(Icons.update),
// //             ),
// //             ListTile(
// //               title: Text('Alert'),
// //               leading: Icon(Icons.add_alert),
// //             ),
// //
// //           ],
// //         ),
// //
// //       ),
// //     ),
//
// // TabBar
// // bottom:const TabBar(
// // tabs: [
// // Tab( icon: Icon(Icons.home),text: 'Home',),
// // Tab(icon: Icon(Icons.settings),text: 'About'),
// // Tab(icon: Icon(Icons.account_circle),text: 'Projects'),
// // Tab(icon: Icon(Icons.notification_add),text: 'Notifications'),
// // ],
// // labelPadding: EdgeInsets.zero,
// // ),
//
// // TabBarView use DefaultTabController at as parent of the scaffold
//
// // TabBarView(
// // children: [
// // buildPage('Home Page'),
// // buildPage('About Page'),
// // buildPage('Project Page'),
// // buildPage('Notification Page'),
// // ],
// // ),
//
// // make this method at the last of the code but below the material app
// // Widget buildPage(String text)=>Center(
// //   child: Text(text,),
// // );
//
// // AppBar
//
// // AppBar(
// // toolbarTextStyle: TextStyle(color: Colors.white),
// // title: Text("App Bar"),
// // centerTitle: true,
// // backgroundColor: Colors.orange,
// // leading: const Icon(
// // Icons.widgets,
// // color: Colors.amber,
// // ),
// // actions: [
// // IconButton(
// // onPressed: () {},
// // icon: Icon(Icons.person),
// // ),
// // IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
// // IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
// // IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
// // IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
// // IconButton(onPressed: () {}, icon: Icon(Icons.more_rounded)),
// // PopupMenuButton(
// // itemBuilder: (context) {
// // return [
// // PopupMenuItem(value: 1, child: Text('home')),
// // PopupMenuItem(value: 2, child: Text('settings')),
// // PopupMenuItem(value: 3, child: Text('about'))
// // ];
// // },
// // onSelected: (value) {
// // if (value == 1) {
// // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// // content: Text("You selected home"),
// // duration: Duration(microseconds: 3000),
// // // padding: EdgeInsets.all(20),
// // ));
// // } else if (value == 2) {
// // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// // content: Text("You selected settings"),
// // duration: Duration(microseconds: 3000),
// // // padding: EdgeInsets.all(20),
// // ));
// // } else if (value == 3) {
// // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// // content: Text("You selected about"),
// // duration: Duration(microseconds: 3000),
// // // padding: EdgeInsets.all(20),
// // ));
// // }
// // },
// // )
// // ],
// // actionsIconTheme: const IconThemeData(color: Colors.blue, size: 20),
// // ),
//
// // Drawer
//
// // drawer:   Drawer(
// // backgroundColor: Colors.pink,
// // child: ListView(
// // children: [
// // DrawerHeader(child: ListTile(
// // leading: CircleAvatar(
// // backgroundImage: NetworkImage('http://ts3.mm.bing.net/th?id=OIP.n5CeR93916slWXGyV13PuAHaHa&pid=15.1'),
// // ),
// // title: Text('Name'),
// // subtitle: Text("Biography"),
// // )),
// //
// // ListTile(
// // title: Text("Phone"),
// // leading: Icon(Icons.phone),
// // ),
// // ListTile(
// // title: Text('Email'),
// // leading: Icon(Icons.email),
// // )
// // ],
// // ),
// // ),
//
// // SnackBar
//
// // ElevatedButton(
// // onPressed: () {
// // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// // action: SnackBarAction(
// // label: "Snack Bar",
// // onPressed: () {},
// // ),
// // content: Text("SBAR"),
// // duration: Duration(microseconds: 3000),
// // padding: EdgeInsets.all(20),
// // ));
// // },
// // child: Text("SnackBar"),
// // ),
//
// // CheckBox define first
// // bool Male=false;
// // bool Female=false;
//
// // Text("Select Gender"),
// // SizedBox(width: 20,),
// // Text("Male"),
// // Checkbox(value: Male, onChanged: (bool?value){
// // setState(() {
// // Male=value!;
// // });
// // }),
//
// //Radio button
// // define gender first  "String?gender"
// // Text("Select Gender"),
// // SizedBox(width: 20,),
// // Text("Male"),
// // Radio(value: "Male", groupValue: gender, onChanged: (value){
// // setState(() {
// // gender=value.toString();
// // });
// // }),
//
// //RadioListTile
// // Column(
// // children: [
// // Text("Select Gender"),
// // RadioListTile(
// // title: Text("Male"),
// // value:'Male', groupValue: gender, onChanged: (String?value){
// // setState(() {
// // gender=value;
// // });
// // },),
// // RadioListTile(
// // title: Text("Female"),
// // value:'Female', groupValue: gender, onChanged: (String?value){
// // setState(() {
// // gender=value;
// // });
// // },),
// // RadioListTile(
// // title: Text("Other"),
// // value:'Other', groupValue: gender, onChanged: (String?value){
// // setState(() {
// // gender=value;
// // });
// // },),
// // ],
// // ),
//
// //Slider
// // first define a couter variable of type int
// // Slider(
// // value: counter.toDouble(),
// // min: 0,
// // max: 10,
// // divisions: 10,
// // label: counter.round().toString(),
// // onChanged: (value){
// // setState(() {
// // counter=value.toInt();
// // },);
// // })
//
// // //Switch
// //
// // Center(
// // child: Switch(
// // value: isSwitched,
// // onChanged: (value) {
// // setState(() {
// // isSwitched = value;
// // });
// // },
// // activeTrackColor: Colors.greenAccent,
// // activeColor: Colors.green,
// // ),
// // ),
//
// // TextFormField
// // Padding(padding: EdgeInsets.only(
// // top: 100,
// // left: 20,
// // right: 20,
// // ),
// // child: TextFormField(
// // decoration: InputDecoration(
// // hintText: 'Name',
// // label: Text("Name"),
// // enabledBorder: OutlineInputBorder( //change the outline border color
// // borderRadius: BorderRadius.circular(15),
// // borderSide: BorderSide(color: Colors.blue,width: 2)
// // ),
// // focusedBorder: OutlineInputBorder(
// // borderRadius: BorderRadius.circular(15),
// // borderSide: BorderSide(color: Colors.red,width: 2)
// // ),
// // fillColor: Colors.grey,
// // ),
// //
// // ),
// // ),
//
// // DropDownMenu
//
// // DropdownButton(value: chooseVal, items: items.map<DropdownMenuItem<String>>((String?value){
// // return DropdownMenuItem<String>(
// // value: value,
// // child: Text(value!),
// // );
// // },).toList(),
// // hint: Text('Please chose the platform'),
// // onChanged: (value){
// // setState(() {
// // chooseVal=value;
// // });
// // },
// // )
//
// // Single child ScrollView
//
// // Center(
// // child: Container(
// // width: double.infinity,
// // height: 200,
// // color: Colors.red,
// // margin: EdgeInsets.all(40),
// // child: SingleChildScrollView(
// // child: Column(
// // children: [
// // for(int i=0; i<=10; i++)
// // Container(
// // width: double.infinity,
// // color: Colors.blue,
// // margin: EdgeInsets.all(10),
// // height: 20,
// // )
// //
// // ],
// // ),
// // ),
// //
// // ),
// // )
