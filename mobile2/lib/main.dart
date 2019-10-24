import 'package:flutter/material.dart';
import 'package:mobile2/Home_page/Home.dart';
void main() => runApp(Screen());

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}