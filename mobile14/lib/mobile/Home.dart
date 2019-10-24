
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile13/mobile/About.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                child: Image.network("https://images.pexels.com/photos/1227520/pexels-photo-1227520.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  fit:BoxFit.cover,
                  height: 800.0,
                ),
                
              ),
              Center(
                child: RaisedButton(
                  child: Text("Button",style: TextStyle(fontSize: 50.0,),),
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => About()
                      ),
                    );
                  },
                  color: Colors.pink,
                ),
              ),
            ],
          ),
    );
  }
}