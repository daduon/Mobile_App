import 'package:flutter/material.dart';

void main() => runApp(Practice());
class Practice extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text("Real Machrid",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          backgroundColor:Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu,color:Colors.red),
            onPressed: () {},
          ),
          actions: <Widget>[
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJvdHtsWEdCSTTGXys16QNlximLvRzJK33eB0Y94CLgd4G9uAavA"),
          ],
        ),  
      ),
    );
  }
}