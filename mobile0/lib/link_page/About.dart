
import 'package:flutter/material.dart';
void main() => runApp(About());

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Center(
        child: Text("about page",
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