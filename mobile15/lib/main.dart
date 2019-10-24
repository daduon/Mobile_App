import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main() => runApp(FakeBook());
class FakeBook extends StatefulWidget {
  @override
  _FakeBookState createState() => _FakeBookState();
}

class _FakeBookState extends State<FakeBook> {
  Map users;
  List userData;

  Future getUser() async {
  http.Response response = await http.get("https://reqres.in/api/users");
  // 
  users = json.decode(response.body);
  debugPrint(response.body);
  setState(() {
   userData = users['data']; 
  });
  //debugPrint(userData.toString());
  }
  @override
  void initState() {
    super.initState();
    getUser();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Fake Book"),

          ),
          body: ListView.builder(
            itemCount: userData == null ? 0 : userData.length,
            itemBuilder: (BuildContext context, int index){
              return Card(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      // child: CircleAvatar(
                      //   // click "control + '.' => add ding"
                      //   backgroundImage: NetworkImage(userData[index]['avatar']),
                      //   maxRadius: 35.0,
                      // ),
                      child: Image.network(userData[index]['avatar'],
                      fit: BoxFit.fill,
                      height: 300.0,
                      width: 300.0,
                      ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      // child: Text('${userData[index]["first_name"]}, ${userData[index]["last_name"]}',
                      // style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400,color: Colors.pink ),
                      // ),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(userData[index]['avatar']),
                          ),
                          Text('${userData[index]["first_name"]}, ${userData[index]["last_name"]}',
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400,color: Colors.pink ),
                      ),
                      IconButton(onPressed: (){},icon: Icon(Icons.thumb_up, color: Colors.blue),),
                      IconButton(onPressed: (){},icon: Icon(Icons.thumb_down, color: Colors.blue),),
                      IconButton(onPressed: (){},icon: Icon(Icons.favorite, color: Colors.blue),),
                      IconButton(onPressed: (){},icon: Icon(Icons.share, color: Colors.blue),),
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