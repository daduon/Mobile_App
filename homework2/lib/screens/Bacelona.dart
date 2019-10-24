import 'package:flutter/material.dart';

class Bacelona extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[500],
        title: Text("Bacelona"),
        actions: <Widget>[
          Image.network(
            "https://www.stickpng.com/assets/images/584a9b3bb080d7616d298777.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
      body: Center(
        child: Image.network(
          "https://ewscripps.brightspotcdn.com/dims4/default/b1a9bd4/2147483647/strip/true/crop/1024x576+0+91/resize/1280x720!/quality/90/?url=https%3A%2F%2Fewscripps.brightspotcdn.com%2Fcb%2Fd1%2F213af3cd474fb695dfcd37d57e9e%2Fgettyimages-1146488042.jpg",
          fit: BoxFit.cover,
          height: double.infinity,
        ),
      ),
    );
  }
}
