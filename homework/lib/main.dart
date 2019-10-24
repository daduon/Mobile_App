import 'package:flutter/material.dart';

void main() => runApp(Homework());
class Homework extends StatelessWidget{
  Widget build(BuildContext  context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text("Bacelona"),
          backgroundColor: Colors.pink,
          leading:IconButton(
            icon: Icon(Icons.menu, color:Colors.white,),
            onPressed: () {},
          ),
          actions: <Widget>[
            Image.network("https://upload.wikimedia.org/wikipedia/en/thumb/4/47/FC_Barcelona_%28crest%29.svg/1200px-FC_Barcelona_%28crest%29.svg.png",
              width:40.0,
            ),
            IconButton(
              icon:Icon(Icons.menu),
              color:Colors.pink,
              onPressed: (){},
            ),
          ],
        ),
        
        body:Container(
          child: Center(
            child: Image.network("https://arxiu.fcbarcelona.cat/web/downloads/sala_premsa/fotos/Plantilla0809/FCBarcelona0809.jpg",
            fit:BoxFit.cover,
            height:560.0,
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child:Container(
            color:Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {},
                  color: Colors.white,
                ),
                IconButton(
                  icon: Icon(Icons.group),
                  color: Colors.white,
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.white,
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