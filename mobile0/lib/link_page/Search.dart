import 'package:flutter/material.dart';
void main() => runApp(Search());

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("search"),
      ),
      body: Center(
        child: Text("search page",
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