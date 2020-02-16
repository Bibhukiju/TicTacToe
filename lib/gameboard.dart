import 'dart:ui';

import 'package:flutter/material.dart';

class GameBoard
{
  final int id;
  String text;
  Color bg;
  bool enabled;

  GameBoard({this.id, this.text="", this.bg=Colors.red, this.enabled=true});
}