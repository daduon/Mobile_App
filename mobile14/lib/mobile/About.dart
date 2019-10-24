 import 'package:flutter/material.dart';
 
 class About extends StatefulWidget {
   @override
   _AboutState createState() => _AboutState();
 }
 
 class _AboutState extends State<About> {
   @override
   Widget build(BuildContext context) {
     return DefaultTabController(
       length: 3,
       child: Scaffold(
         appBar: AppBar(
           title: Text("YaDa + Da"),
           bottom:TabBar(
             tabs: <Widget>[
               Tab(
                 icon: Icon(Icons.youtube_searched_for),
               ),
                 Tab(
                 icon: Icon(Icons.fastfood),
               ),
                 Tab(
                 icon: Icon(Icons.message),
               ),
             ],
           ),
         ),
         floatingActionButton: FloatingActionButton(
           child: Icon(Icons.home),
           onPressed: (){
             Navigator.pop(context);
           },
         ),
         body: TabBarView(
           children: <Widget>[
             Image.network("http://decor.mthai.com/app/uploads/2015/03/233924-tm.jpg",
              fit: BoxFit.fill,
              height: double.infinity,
             ),
             Image.network("https://i.ytimg.com/vi/W4vAqC3lVwU/maxresdefault.jpg",
              fit: BoxFit.fill,
              height: double.infinity,
             ),
             Image.network("https://walteramerika.blogs.com/.a/6a00d83451f34569e201310f3dd155970c-pi",
              fit: BoxFit.fill,
              height: double.infinity,
             ),
           ],
         ),
       ),
     );
   }
 }