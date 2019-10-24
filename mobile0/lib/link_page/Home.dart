
import 'package:flutter/material.dart';
import 'package:practice/link_page/message.dart';
import 'package:practice/link_page/Search.dart';
import 'package:practice/link_page/About.dart';
import 'package:practice/link_page/User.dart';
void main() => runApp(Home());

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("More page"),
              decoration: BoxDecoration(
                color: Colors.yellowAccent
              ),
            ),
            ListTile(
              title: Text("User"),
              leading: Icon(Icons.group, color: Colors.pink,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => User()));
              },
            ),
            ListTile(
              title: Text("Message"),
              leading: Icon(Icons.message, color: Colors.pink,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Message()));
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text("Home page",
          style: TextStyle(fontSize:50.0),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.message, color: Colors.red,),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Message()));
                },
              ),
              IconButton(
                icon: Icon(Icons.search, color: Colors.red,),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Search()));
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite, color: Colors.red,),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>About()));
                },
              ),
              IconButton(
                icon: Icon(Icons.group, color: Colors.red,),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>User()));
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.home),
      ),
    );
  }
}