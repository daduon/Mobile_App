
import 'package:flutter/material.dart';
import 'package:mobile5/mobile/Home.dart';
void main() => runApp(Practice());
class Practice extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
