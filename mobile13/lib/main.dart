
import 'package:flutter/material.dart';

void main() => runApp(RealMobile());
var refresh = true;
class RealMobile extends StatefulWidget {
  @override
  _RealMobileState createState() => _RealMobileState();
}

class _RealMobileState extends State<RealMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DA"),
          actions: <Widget>[
          IconButton(
            icon:Icon(Icons.refresh),
            onPressed: (){
              setState(() {
               refresh = false; 
              });
            },
          ),
          IconButton(
            icon:Icon(Icons.open_in_new),
            onPressed: (){
              setState(() {
               refresh = true; 
              });
            },
          ),
        ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child:Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("http://rightman.co.th/images/bg/bg_all.jpg"),
                    maxRadius: 70.0,
                    child: Text("YaDa", style: TextStyle(color:Colors.red, fontSize: 30.0,),),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.more_horiz),
              ),
              ListTile(
                title: Text("Massege"),
                leading: Icon(Icons.message),
              ),
              ListTile(
                title: Text("Email"),
                leading: Icon(Icons.email),
              ),
            ],
          ),
        ),
        body: Center(
          child: refresh ? CircularProgressIndicator() : Text("Good"), // សម្រាប់សិក្សលក្ខណ
        ),
      ),
    );
  }
}