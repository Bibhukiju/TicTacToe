import 'package:flutter/material.dart';
import 'package:tictactoe/main.dart';

class DiaLogue extends StatelessWidget {
  final title;
  final content;
  final VoidCallback callback;
  final actionText;
  DiaLogue(this.title,this.content, this.callback,[this.actionText="Reset"]);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:Text(title),
      content: Text(content),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) => Navi())
            );
          },
          child: Text(actionText),
        ),
      ],
    );
  }
}
