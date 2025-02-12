import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  int _selectedIndex = 0;

  // List of widgets to show for each bottom navigation item
  // static List<Widget> _widgetOptions = <Widget>[
  //   // Text('Home Page'),
  //   // Text('Network Page'),
  //   // Text('Post Page'),
  //   // Text('Notifications Page'),
  //   // Text('Jobs Page'),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title:const Text("Linked In Post"),
         centerTitle: true,
         backgroundColor: Colors.teal,
       ),
       body: Container(
         child: Column(
           children: [
             badges.Badge(
               badgeContent: Text('$_selectedIndex'),
               child: Icon(Icons.notification_add),
             ),
             // _widgetOptions.elementAt(_selectedIndex),
             ListTile(
               leading:const CircleAvatar(
         
                 backgroundImage: NetworkImage('https://th.bing.com/th?id=OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH&w=204&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2',),),
               title:const  Text("Haresh Kumar"),
               subtitle: const Text("Web Developer|Designer|Software Engineer"),
               trailing: PopupMenuButton(itemBuilder: (context)=>[
                const PopupMenuItem(child: Text("item1"),
                ),
               ],
               ),
             ),
             const Row(
               children: [
                 Text("40 US universities are offering full funding and application\n fee WAIVERS for the 2025 academic session."),

               ],
             ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(image: NetworkImage('https://th.bing.com/th/id/R.d1137b975161acfca93f420aac1326df?rik=3CmvTKRCd34WTw&riu=http%3a%2f%2fwallpapercave.com%2fwp%2fCTzL0r1.jpg&ehk=tju%2fFLIDq4HQ%2fwWk%2bE4uKD0fOVcEKdt8XzLIMh0xLFI%3d&risl=&pid=ImgRaw&r=0'),),
                          Divider(
                            color: Colors.black,
                            thickness: 3,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.thumb_up, color: Colors.lightBlue,),
                                Icon(Icons.favorite,color: Colors.pink,),
                                Icon(Icons.lightbulb,color: Colors.yellow,),
                                Text("                           58 comments       777 reposts")
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.thumb_up),
                                    Text("Like"),
                                  ],
                                ),
                                SizedBox(width: 56,),
                                Column(
                                  children: [
                                    Icon(Icons.comment),
                                    Text("Comment"),
                                  ],
                                ),
                                SizedBox(width: 56,),
                                Column(
                                  children: [
                                    Icon(Icons.repeat_rounded),
                                    Text("Repost"),
                                  ],
                                ),
                                SizedBox(width: 56,),
                                Column(
                                  children: [
                                    Icon(Icons.send),
                                    Text("Send"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Reactions",style: TextStyle(fontSize: 30,),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage('https://th.bing.com/th?id=OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH&w=204&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),
                                ),
                                SizedBox(width: 20,),
                                CircleAvatar(
                                  backgroundImage: NetworkImage('https://th.bing.com/th?id=OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH&w=204&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),
                                ),
                                SizedBox(width: 20,),
                                CircleAvatar(
                                  backgroundImage: NetworkImage('https://th.bing.com/th?id=OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH&w=204&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),
                                ),
                                SizedBox(width: 20,),
                                CircleAvatar(
                                  backgroundImage: NetworkImage('https://th.bing.com/th?id=OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH&w=204&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),
                                ),
                                SizedBox(width: 20,),
                                CircleAvatar(
                                  backgroundImage: NetworkImage('https://th.bing.com/th?id=OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH&w=204&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),
                                ),
                                SizedBox(width: 20,),
                                CircleAvatar(
                                  child: Text("...",),
                                  ),
                              ],
                            ),
                          )
                        ],
                      )
           ],
         ),
       ),
       bottomNavigationBar: BottomNavigationBar(
         items:const <BottomNavigationBarItem>[
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             label: 'Home',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.business),
             label: 'Network',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.add_box),
             label: 'Post',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.notifications),
             label: 'Notifications',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.work),
             label: 'Jobs',
           ),
         ],
         currentIndex: _selectedIndex,
         selectedItemColor: Colors.blue,
         unselectedItemColor: Colors.grey,
         onTap: _onItemTapped,
         type: BottomNavigationBarType.fixed, // Use fixed to prevent shifting effect
       ),
     ),
    );
  }
}
