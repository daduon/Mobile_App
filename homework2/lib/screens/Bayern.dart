import 'package:flutter/material.dart';
class Bayern extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Bayern"),
        actions: <Widget>[
          Image.network("https://www.stickpng.com/assets/images/584d8683367b6a13e54477d4.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
      body: Center(
        child: Image.network("https://img2.thejournal.ie/article/4781214/river?version=4781215&width=1340",
          fit: BoxFit.cover,
          height: double.infinity,
        ),
      ),
    );
  }
}