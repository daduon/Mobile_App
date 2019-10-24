import 'package:flutter/material.dart';

void main() => runApp(Homework());
class Homework extends StatelessWidget{
  Widget build(BuildContext  context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text("Demostration"),
          backgroundColor: Colors.pink,
          leading:IconButton(
            icon: Icon(Icons.menu, color:Colors.white,),
            onPressed: () {},
          ),
          actions: <Widget>[
            Image.network("https://www.ivolunteer.com.ph/images/uploads/organization_images/351/original/org_e3d76f2451a22c6866d85c5c45b81842.png?1384228117",
              width: 50.0,
            ),
          ],
        ),
        
        body:Container(
          child: Center(
            child: Image.network("https://www.passerellesnumeriques.org/wp-content/uploads/2016/03/DSC_2053.jpg",
            fit:BoxFit.cover,
            height:600.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor:Colors.orange,
          child: Icon(Icons.favorite),
        ),
        bottomNavigationBar: BottomAppBar(
          child:Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {},
                  color: Colors.red,
                ),
                IconButton(
                  icon: Icon(Icons.group),
                  color: Colors.pink,
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.message),
                  color: Colors.green,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.blue,
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}