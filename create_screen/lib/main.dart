import 'package:flutter/material.dart';
import 'package:create_screen/Screen/Home.dart';
void main() => runApp(Screen());
class Screen extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return MaterialApp( 
   debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
