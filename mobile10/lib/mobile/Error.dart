import 'package:flutter/material.dart';
class Error extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
      ),
      body: Center(
        child: Text("WellCome to Error",
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
      ),
    );
  }
}