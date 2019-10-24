import 'package:flutter/material.dart';
class Hotspur extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Hotspur"),
        actions: <Widget>[
          Image.network("https://www.stickpng.com/assets/images/580b57fcd9996e24bc43c4ee.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
      body:Center(
        child: Image.network("http://www1.pictures.zimbio.com/gi/Harry+Kane+International+Champions+Cup+2017+OZh2YIV13CUl.jpg",
          fit: BoxFit.cover,
          height: double.infinity,
        ),
      ),
    );
  }
}