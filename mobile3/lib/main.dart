
import 'package:flutter/material.dart';
void main() => runApp(Practice());
class Practice extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor:Colors.blueGrey,
        appBar: AppBar(
          title: Text("I am rich"),
           backgroundColor:Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(image: AssetImage('images/diamond.png'),),
        ),
      ),
    );
  }
}