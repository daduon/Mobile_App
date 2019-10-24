import 'package:mobile2/Home_page/About.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.pink,
        leading: IconButton(
          onPressed: () {
            print("You click me! yeyeye hasha!!!");
          },
          icon: Icon(Icons.menu),
        ),
      ),
      body: Center(
        child: Image.asset("assets/images/dog.jpg",
          fit: BoxFit.cover,
          height: 610.0,
        ),     
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => About()),
          );     
        },
        child: Icon(Icons.arrow_forward),
        backgroundColor: Colors.pink,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.pink,
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_box),
                color: Colors.yellow,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.yellow,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.group),
                color: Colors.yellow,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_to_home_screen),
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}