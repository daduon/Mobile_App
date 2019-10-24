import 'package:flutter/material.dart';
import 'package:mobile13/mobile/Home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
    );
  }
}