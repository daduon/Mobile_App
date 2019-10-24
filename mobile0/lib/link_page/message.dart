import 'package:flutter/material.dart';

void main() => runApp(Message());

class Message extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("message"),
      ),
      body: Center(
        child: Text("message page",
          style: TextStyle(fontSize:50.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
      ),
    );
  }
}