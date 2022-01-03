import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget{
    MyAppBar({Key key}) : preferredSize = Size.fromHeight(56), super(key: key);
    @override
    final Size preferredSize;
  @override
  _AppBarState createState() => new _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
  return AppBar(
      title: Text("ciao"),
        );
  }
}
