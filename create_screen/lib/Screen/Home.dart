import 'package:flutter/material.dart';
import 'package:create_screen/Screen/About.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold( 
      appBar: AppBar( 
        title: Text("Home"),
      ),
      body: Center(
        child: Image.asset('assets/image/1.jpg',
        fit:BoxFit.cover,
        height: double.infinity,
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         Navigator.push(context,
          MaterialPageRoute(builder: (context)=>About())
         );
        },
    child: Icon(Icons.arrow_forward),
      ),
    );
  }
}