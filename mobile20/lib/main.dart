
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(
          title: Text("PNC"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.save,size:30.0,), color: Colors.black,
              onPressed: (){},
            ),
          ],
          bottom:TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.fastfood),
            ),
          ],
        ),
        ),
        body:TabBarView(
          children: <Widget>[
            Image.network("https://i.pinimg.com/736x/45/87/af/4587afe91e77e10d3c6ba24fd913883a.jpg",
              fit: BoxFit.cover,
              height: 600.0,
            ),
            Image.network("https://1stnews.com/wp-content/uploads/2019/06/58411051_133265491107647_9181788030781554563_n.jpg",
              fit: BoxFit.cover,
              height: 600.0,
            ),
            Image.network("http://www.gtgoodtimes.com/wp-content/uploads/2019/03/Screen-Shot-2019-03-22-at-2.05.14-PM.png",
              fit: BoxFit.cover,
              height: 600.0,
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.home),
              ),
               IconButton(
                onPressed: (){},
                icon: Icon(Icons.home),
              ),
               IconButton(
                onPressed: (){},
                icon: Icon(Icons.home),
              ),
               IconButton(
                onPressed: (){},
                icon: Icon(Icons.home),
              ),
            ],),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://static.boredpanda.com/blog/wp-content/uploads/2018/07/worlds-most-beautiful-nigerian-girl-jare-but-mofe-fb__700-png.jpg"),
                    radius: 70.0,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text("Person"),
                leading:Icon(Icons.person) ,
              ),
              ListTile(
                title: Text("Delete"),
                leading:Icon(Icons.delete) ,
              ),
              ListTile(
                title: Text("Don't delete"),
                leading:Icon(Icons.delete_forever) ,
              ),
            ],
          ),
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_home,
          backgroundColor: Colors.blue,
          overlayColor: Colors.white,
          overlayOpacity: 0.3,
          children: [
            SpeedDialChild(
              label: "Home Page",
              labelStyle:TextStyle(fontSize:20),
              child: Icon(Icons.home),
              backgroundColor:Colors.yellow,
            ),
            SpeedDialChild(
              child:Icon(Icons.search),
              label: "To reseach",
              labelStyle:TextStyle(fontSize:20),
              backgroundColor:Colors.pink,
            ),
            SpeedDialChild(
              backgroundColor:Colors.red,
              label: "You to edit",
              labelStyle:TextStyle(fontSize:20),
              child: Icon(Icons.edit),
            ),
          ],
        ),
      ),
      ),
    );
  }
}