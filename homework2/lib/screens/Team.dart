import 'package:flutter/material.dart';
import 'package:homework2/screens/Bacelona.dart';
import 'package:homework2/screens/Bayern.dart';
import 'package:homework2/screens/Juventus.dart';
import 'package:homework2/screens/Hotspur.dart';

class Team extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text("Football Team"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Image.network(
                    "https://www.stickpng.com/assets/images/584a9b3bb080d7616d298777.png",
                    fit: BoxFit.cover,
                    width: 40.0,
                  ),
                  title: Text("Bacelona"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Bacelona()),
                    );
                  },
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Image.network(
                    "https://cdn.freebiesupply.com/images/large/2x/juventus-logo-png-transparent.png",
                    fit: BoxFit.cover,
                    width: 40.0,
                  ),
                  title: Text("Juventus"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Juventus()),
                    );
                  },
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Image.network(
                    "https://www.stickpng.com/assets/images/584d8683367b6a13e54477d4.png",
                    fit: BoxFit.cover,
                    width: 40.0,
                  ),
                  title: Text("Bayern"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Bayern()),
                    );
                  },
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Image.network(
                    "https://www.stickpng.com/assets/images/580b57fcd9996e24bc43c4ee.png",
                    fit: BoxFit.cover,
                    width: 40.0,
                  ),
                  title: Text("Hostpur"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Hotspur()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
