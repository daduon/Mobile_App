

import 'package:flutter/material.dart';
import 'package:flutter/Widgets.dart';
void main() => runApp(Demo());
class Demo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar: AppBar(
          title:Text("PNC"),
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.menu, color:Colors.pink),
            onPressed: () {print("pnc");},
          ),
          actions: <Widget>[
            Image.network("https://cdn.mos.cms.futurecdn.net/yJaNqkw6JPf2QuXiYobcY3.jpg")
          ],
        ),
        body:Container(
          child:Center(
            child: Image.network("https://i.imgur.com/gS5n8P3.jpg",
              fit:BoxFit.cover,
              height:700.0,
            ),
          ),
        ),
        floatingActionButton:FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          child: Icon(Icons.beach_access, color: Colors.pink,),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {},
                  color:Colors.pink,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// void main() => runApp(
//   MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       appBar: AppBar(
//         title:Text('khmer'),
//         backgroundColor:Colors.pink,
//         leading:IconButton(
//           icon: Icon(
//             Icons.menu,
//             color: Colors.black,
//           ),
//           onPressed: () {},
//         ),
//       ),
//       body:Container(
//         child:Center(
//           child:Image.network("https://twinfinite.net/wp-content/uploads/2018/06/Shadow-of-the-Tomb-Raider-Lara-Croft.jpg",
//             fit:BoxFit.cover,
//             height: 800.0,
//           ),
//           ),
//       ),
//       bottomNavigationBar:BottomAppBar(
//         child:Container(
//           color:Colors.red[800],
//           child:Row(
//             mainAxisAlignment:MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//              IconButton(
//                icon:Icon(Icons.group),
//                color:Colors.white,
//                onPressed: () {},
//              ),
//              IconButton(
//                icon: Icon(Icons.search),
//                color:Colors.white,
//                onPressed: () {},
//              ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   ),
// );