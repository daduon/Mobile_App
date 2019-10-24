import 'package:flutter/material.dart';
import 'link_page/Home.dart';
void main() => runApp(Practice());
class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home()
    );
  }
}