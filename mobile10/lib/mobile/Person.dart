import 'package:flutter/material.dart';
class Person extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Person"),
      ),
      body: Center(
        child: Text("WellCome to Person",
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
      ),
    );
  }
}