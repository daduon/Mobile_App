
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Mobile());
class Mobile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text ("PNC"),
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu, color: Colors.white,),
          ),
          actions: <Widget>[
            Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Skype_logo_%282019%E2%80%93present%29.svg/1200px-Skype_logo_%282019%E2%80%93present%29.svg.png")
          ],
          elevation: 12.0,
        ),
        body: Stack(
          children: <Widget>[
            Image.network("https://i.pinimg.com/originals/d6/cb/e0/d6cbe01ac6372a505d6e86a31a1e5e23.png",
            fit: BoxFit.cover,
            height: 600.0,
            ),
            Center(
              child: Text("I am like IT",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.pink,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home, color: Colors.white,),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.message, color: Colors.white,),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.phone, color: Colors.white,),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.white,),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}