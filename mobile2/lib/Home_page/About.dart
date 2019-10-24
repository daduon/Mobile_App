
import 'package:flutter/material.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        backgroundColor: Colors.pink,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.group),
            title: Text("Users"),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("Message"),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("Calendar"),
          ),
        ],
      ),
    );
  }
}