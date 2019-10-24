
import 'package:flutter/material.dart';
import 'About.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.green,
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text("Home Page"),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => About()
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}