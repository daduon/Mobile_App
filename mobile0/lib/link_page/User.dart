import 'package:flutter/material.dart';
void main() => runApp(User());

class User extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User"),
      ),
      body: Center(
        child: Text("User page",
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