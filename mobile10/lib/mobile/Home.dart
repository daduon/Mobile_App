
import 'package:flutter/material.dart';
import 'package:mobile10/mobile/Update.dart';
import 'Person.dart';
import 'Error.dart';
import 'Update.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PNC"),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.refresh),
            onPressed: (){},
          ),
          IconButton(
            icon:Icon(Icons.straighten),
            onPressed: (){},
          ),
          
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("More_App",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.pink,
                  backgroundColor:Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                color:Colors.red,
              ),
            ),
            ListTile(
              title: Text("New Update"),
              leading:Icon(Icons.update),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => Update()
                  ),
                );
              },
            ),
             ListTile(
              title: Text("Person"),
              leading:Icon(Icons.person),
                            onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => Person()
                  ),
                );
              },
            ),
             ListTile(
              title: Text("Look Error"),
              leading:Icon(Icons.error),
                            onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => Error()
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}