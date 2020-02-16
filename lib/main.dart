import 'package:flutter/material.dart';
import 'package:tictactoe/homepage2.dart';
import 'package:tictactoe/light.dart';

import 'about.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.grey,
      home: Navi(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Navi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final drawerItems = ListView(
      padding: EdgeInsets.all(80),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage("images/ticicon.PNG"),
          radius: 70,
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
            },),
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
                  MaterialPageRoute(builder: (context) => Light()),
                );
              }, value: true,
              )
            ],
          ),
        )
      ],
    );
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: Homepage2(),
        drawer: Drawer(
          child: drawerItems,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
