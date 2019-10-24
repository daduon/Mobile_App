
import 'package:flutter/material.dart';
class Juventus extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Juventus"),
        actions: <Widget>[
          Image.network("https://cdn.freebiesupply.com/images/large/2x/juventus-logo-png-transparent.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
      body: Center(
        child: Image.network("https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i0YRM8_nyYlU/v0/1000x-1.jpg",
          fit:BoxFit.cover,
          height: double.infinity,
        ),
      ),
    );
  }
}