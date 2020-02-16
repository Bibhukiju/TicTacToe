import 'package:flutter/material.dart';
import 'package:tictactoe/about.dart';
import 'package:tictactoe/main.dart';

import 'homepage.dart';

class Light extends StatelessWidget {
@override
Widget build(BuildContext context) {
  final drawerItems = ListView(
    padding: EdgeInsets.all(80),
    children: <Widget>[
      CircleAvatar(
        radius: 70,
        backgroundImage: AssetImage("images/ticicon.PNG"),
      ),
      Divider(
        height: 10,
      ),
      Center(
        child: ListTile(
          title: FlatButton(child: Text("About us"), onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context)=>About())
            );
          },
          )
          ,
        ),
      ),
      Center(
        child: Divider(
          height: 10,
        ),
      ),
      Center(
        child: Row(
          children: <Widget>[
            Text("Darkmode"),
            Switch(onChanged: (bool value) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Navi()),
              );
            }, value: false,
            )
          ],
        ),
      )
    ],
  );
  return MaterialApp(
    theme: ThemeData.light(),
    home: Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.white12,
      ),
      body: Homepage(),
      drawer: Drawer(
        child: drawerItems,
      ),
    ),
    debugShowCheckedModeBanner: false,
  );
}
}
