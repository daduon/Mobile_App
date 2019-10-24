import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
void main() => runApp(MobileBtn());
class MobileBtn extends StatefulWidget {
  @override
  _MobileBtnState createState() => _MobileBtnState();
}

class _MobileBtnState extends State<MobileBtn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("PNC"),
        ),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Colors.black,
        //   onPressed: (){},
        //   child: Icon(Icons.add, color:Colors.white,),
          // mini:true,
          // shape: RoundedRectangleBorder(
          //   borderRadius:BorderRadius.all(
          //     Radius.circular(12.0),
          //   ),
          // ),

        //),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: (){},
        //   label: Text("Cart"),
        //   icon: Icon(Icons.cake),
        //   shape: RoundedRectangleBorder(),
        // ),

        floatingActionButton: SpeedDial(
           animatedIcon: AnimatedIcons.menu_close, //ovilea
           overlayColor: Colors.green,
           overlayOpacity: 0.3,
           children: [
             SpeedDialChild(
               Icon(Icons.home),
               backgroundColor:Colors.green,
               label: "Love",
               labelBackgroundColor:Colors.red ,
               labelStyle: TextStyle(
                 fontSize: 16.0
               ),

             ),
           ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
void main() => runApp(MobileBtn());
class MobileBtn extends StatefulWidget {
  @override
  _MobileBtnState createState() => _MobileBtnState();
}

class _MobileBtnState extends State<MobileBtn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("PNC"),
        ),
        floatingActionButton: SpeedDial(
           animatedIcon: AnimatedIcons.menu_close, //ovilea
           overlayColor: Colors.green,
           overlayOpacity: 0.3,
           children: [
             SpeedDialChild(
               Icon(Icons.home),
               backgroundColor:Colors.green,
               label: "Love",
               labelBackgroundColor:Colors.red ,
               labelStyle: TextStyle(
                 fontSize: 16.0
               ),

             )
           ],
        ),
      ),
    );
  }
}