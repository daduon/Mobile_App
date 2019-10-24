
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("PNC",style: TextStyle(color:Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        // body: Center(
        //   child: Image.network("https://png.pngtree.com/element_our/sm/20180422/sm_5adce09ac714b.png"),
        //     //child: CircularProgressIndicator(
        //     //backgroundColor: Colors.black,
        //   ),
        //),
        drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Center(
                    child: Text("Sub menu",
                    style: TextStyle(fontSize:30.0, color: Colors.white),
                  ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                  ),
                ),
                ListTile(
                  title: Text("user",style: TextStyle(fontSize: 20.0,),),
                  leading: Icon(Icons.group,size: 40.0,),
                ),
                ListTile(
                   title: Text("massege",style: TextStyle(fontSize: 20.0,),),
                  leading: Icon(Icons.message,size: 40.0,),
                ),
              ],
            ),
        ),
        body: Center(
          child: Image.network("https://png.pngtree.com/element_our/sm/20180422/sm_5adce09ac714b.png",
            fit: BoxFit.cover,
            height: 400.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.more_horiz),
          backgroundColor: Colors.pink,
        ),
        bottomNavigationBar:BottomAppBar(
          child: Container(
            color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home,size: 30.0,),
                  onPressed: (){},
                  color: Colors.white,
                ),
                IconButton(
                  icon: Icon(Icons.phone,size: 30.0,),
                  onPressed: (){},
                  color: Colors.white,
                ),
                IconButton(
                  icon: Icon(Icons.edit,size: 30.0,),
                  onPressed: (){},
                  color: Colors.white,
                ),
                IconButton(
                  icon: Icon(Icons.tab,size: 30.0,),
                  color:Colors.white,
                  onPressed: (){},
                ),
            ],),
          ),
        ),
      ),
    );
  }
}