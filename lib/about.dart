import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/main.dart';
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("About us"),
              leading: FlatButton(
                child: Icon(
                  Icons.arrow_back,
                ), onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context)=>Navi())
                );
              },
              ),
            ),
        body: SafeArea(
          child: Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("images/me.jpg"),
                    radius: 90,
                  ),
                  Text("Bibhu kiju",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 240,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Text("CSIT STUDENT",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                    ),),
                  SizedBox(
                    height: 30,
                    width: 240,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Card(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          size: 45,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("9863849224",
                          style: TextStyle(
                            color: Colors.yellow.shade800,
                            fontSize: 30,
                          ),
                        )
                      ],
                    ),

                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      title: Text("bibhukiju@gamil.com",
                        style: TextStyle(
                            color: Colors.yellow[800],
                            fontSize: 22,
                        ),),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
