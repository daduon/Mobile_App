import 'package:flutter/material.dart';
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
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text("PNC"),
        ),
        bottomNavigationBar:BottomAppBar(
          child: Container(
            height: 60.0,
            color: Colors.pink[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                  onPressed: (){},
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.home),
                      Text("Home")
                    ],
                  ) ,
                ),
                 MaterialButton(
                  onPressed: (){},
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.home),
                      Text("Home")
                    ],
                  ) ,
                ),
                 MaterialButton(
                  onPressed: (){},
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.home),
                      Text("Home")
                    ],
                  ) ,
                ),
                 MaterialButton(
                  onPressed: (){},
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.home),
                      Text("Home")
                    ],
                  ) ,
                ),
              ]
              ),
          ),
        ),
       floatingActionButton: FloatingActionButton(
         onPressed: (){},
         child: Icon(Icons.add),
       ),
        floatingActionButtonLocation:FloatingActionButtonLocation.,
      ),
    );
  }
}