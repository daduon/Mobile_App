import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main() => runApp(Pixabay());
class Pixabay extends StatefulWidget {
  @override
  _PixabayState createState() => _PixabayState();
}




class _PixabayState extends State<Pixabay> {
    Map images;
    List imgList;
  Future getImg() async {
    http.Response res = await http.get("https://pixabay.com/api/?key=14001068-da63091f2a2cb98e1d7cc1d82&q=yellow+flowers&image_type=photo&pretty=true");
    images = json.decode(res.body);// conver json to array
    //debugPrint(response.body); for test in the console.log
    setState(() {
      imgList = images['hits'];
    });
    //debugPrint(imgList.toString()); console.log
  }

  @override
  void initState() {
    super.initState();
    getImg();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: imgList != null ? imgList.length : 0, // for compare data
          itemBuilder: (context, i){// full word BuildContext context, int index for display
           //final img = imgList[i]; riable for store imgList[i] we can chang imgList[i] to img
            return Card(
              child:Column(
                children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Image.network(imgList[i]['largeImageURL']),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: CircleAvatar(
                             backgroundImage: NetworkImage(imgList[i]['userImageURL']),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("${imgList[i]['tags']}"),
                         ),
                         IconButton(
                           onPressed: (){},
                           icon: Icon(Icons.thumb_down),
                         ),
                         IconButton(
                           onPressed: (){},
                           icon: Icon(Icons.thumb_up),
                         ),
                       ],
                     ),
                   ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}