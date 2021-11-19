import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        unselectedLabelStyle: TextStyle(
            fontFamily: "roboto",
            fontStyle: FontStyle.normal,
            ),
        elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: "LIST"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: "ADD"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "ACCOUNT"
        ),
      ],
    );
  }
}
