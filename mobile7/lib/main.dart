
import 'package:flutter/material.dart';

void main() => runApp(MobileTab());
class MobileTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,// use for set icon
        child: Scaffold(
          appBar:AppBar(
            title: Text("MobileTab",
              style: TextStyle(color:Colors.pink[100],),
            ),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){},
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.search),
                ),
                 Tab(
                  icon: Icon(Icons.delete),
                ),
                 Tab(
                  icon: Icon(Icons.person),
                ),
                 Tab(
                  icon: Icon(Icons.add),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Image.network("https://sharerice.com/images/thumb/c/cd/PKTha.jpg/350px-PKTha.jpg?ezimgfmt=rs:350x313/rscb1/ng:webp/ngcb1"),
              Image.network("https://i.mydramalist.com/50oJwc.jpg"),
              Image.network("https://pm1.narvii.com/6940/9c446856d42e6bdc95d2b8a4f320cf6b51d19e1dr1-220-272v2_hq.jpg"),
              Image.network("http://cdn.dramatrailers.com/wp-content/uploads/2014/08/tp1.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}