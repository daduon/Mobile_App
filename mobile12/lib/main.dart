
import 'package:flutter/material.dart';

void main() => runApp(RealMobile());

class RealMobile extends StatefulWidget {
  @override
  _RealMobileState createState() => _RealMobileState();
}

class _RealMobileState extends State<RealMobile> {
  var _isRefesh = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DA"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: (){
                setState(() {
                  _isRefesh = false;
                });
              },
            ),
             IconButton(
              icon: Icon(Icons.trending_up),
              onPressed: (){
                setState(() {
                  _isRefesh = true;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: _isRefesh ? CircularProgressIndicator(): Text("loading"),
        ),
      ),
    );
  }
}