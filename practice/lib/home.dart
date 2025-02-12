import 'package:flutter/material.dart';

import 'SnackBar.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
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
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('setting'),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text('profile'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('logout'),
              leading: Icon(Icons.alarm),
            )
          ],
        ),
      ),
      appBar: AppBar(
        bottom:const TabBar(
            tabs: [
            Tab( icon: Icon(Icons.home),text: 'Home',),
            Tab(icon: Icon(Icons.settings),text: 'About'),
            Tab(icon: Icon(Icons.account_circle),text: 'Projects'),
            Tab(icon: Icon(Icons.notification_add),text: 'Notifications'),
            ],
            labelPadding: EdgeInsets.zero,
            ),
            toolbarTextStyle: TextStyle(color: Colors.white),
            title: Text("App Bar"),
            centerTitle: true,
            backgroundColor: Colors.orange,
            leading: const Icon(
              Icons.widgets,
              color: Colors.amber,
            ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_alert, color: Colors.white,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.person, color: Colors.white,),),
        ],
      ),
      body: Column(
        children: [
          Expanded(
    child: ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: 4,
      itemBuilder: (context, index){
      return Card(
        color: Colors.pink,
        child: ListTile(
          title: Text('fdfsdfds'),
          subtitle: Text('Bio'),
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: NetworkImage('http://ts3.mm.bing.net/th?id=OIP.n5CeR93916slWXGyV13PuAHaHa&pid=15.1'),
          ),
          trailing: Icon(Icons.star),
        ),
      );
    },
          )
          ),
          Image.network('data:image/jpeg;base64,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'),
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 100),
                  child: Container(



                    color: Colors.red,
                    width: 300,
                    height: 300,
                    child: Text(
                      "Container dsffsddsdfds",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.yellow),
                    ),
                    onPressed: () {
                      print("Button Clicked");
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Snackbar()));
                    },
                    child: Text("Click", style: TextStyle(color: Colors.blue),),
                  ),
                ),
              ),
            ],
          ),
          

          Row(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.yellow),
                ),
                onPressed: () {
                  print("Button Clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Snackbar()));
                },
                child: Text("Click", style: TextStyle(color: Colors.blue),),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.yellow),
                ),
                onPressed: () {
                  print("Button Clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Snackbar()));
                },
                child: Text("Click", style: TextStyle(color: Colors.blue),),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.yellow),
                ),
                onPressed: () {
                  print("Button Clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Snackbar()));
                },
                child: Text("Click", style: TextStyle(color: Colors.blue),),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.yellow),
                ),
                onPressed: () {
                  print("Button Clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Snackbar()));
                },
                child: Text("Click", style: TextStyle(color: Colors.blue),),
              ),
            ],
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('add'),
        backgroundColor:Colors.blue,
        hoverColor: Colors.yellow,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
