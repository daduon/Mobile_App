import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold( 
     appBar: AppBar(
       title: Text("About"),
     ),
    body: ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.people),
          title: Text("User"),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text("User"),
        ),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text("User"),
        )
      ],
    ),
     floatingActionButton: FloatingActionButton(
       onPressed: () { Navigator.pop(context);},
       child: Icon(Icons.arrow_back),
       backgroundColor: Colors.orange,
     ),
   );
  }
}