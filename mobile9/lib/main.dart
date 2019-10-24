

import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("PNC"),
          leading: IconButton(
            icon:Icon(Icons.menu),
            onPressed: (){},
          ),
        ),
        body: Stack(
          children: <Widget>[
            Image.network("https://sharerice.com/images/f/f1/Kammathep_Sorn_Kol11.jpg",
            fit: BoxFit.cover,
            height: 600.0,
            ),
            Center(
              child: Text("Good the teacher"),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.red,
            child: Row(children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: (){},
              ),
            ],),
          ),
        ),
      ),
    );
  }
}