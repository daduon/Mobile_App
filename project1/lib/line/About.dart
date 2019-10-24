
import 'package:flutter/material.dart';
//import 'package:project1/line/Home.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("About"),
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: <Widget>[
      //       DrawerHeader(
      //         child: Center(
      //           child: Text("About Page"),
      //         ),
      //       ),
      //       ListTile(
      //         title: Text("Seach"),
      //         leading: Icon(Icons.search),
      //         onTap: (){
      //           Navigator.push(context,
      //             MaterialPageRoute(
      //               builder: (context) => Home()
      //             ),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}