
import 'package:flutter/material.dart';
class Update extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("update"),
      ),
      body: Center(
        child: Text("WellCome to Update",
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
      ),
    );
  }
}