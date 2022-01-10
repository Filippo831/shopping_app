import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  routeFunction(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, "/");
        break;
      case 1:
        Navigator.pushNamed(context, "add");
        break;
      case 2:
        Navigator.pushNamed(context, "user");
        break;
    }
  }

  Widget build(BuildContext context) {
    // create the container of the bottom bar
    return Container(
      // insert top black border
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        border: Border(
            top: BorderSide(color: Theme.of(context).primaryColor, width: 1)),
      ),

      /*space between top/bottom and icon start*/
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 15),

        /*navigation bar widget*/
        child: BottomNavigationBar(
          selectedItemColor: Theme.of(context).accentColor,
          backgroundColor: Theme.of(context).backgroundColor,
          /*change font (doesnt work for now)*/
          unselectedLabelStyle: const TextStyle(
            fontFamily: "roboto",
            fontStyle: FontStyle.normal,
          ),
          elevation: 0,
          onTap: (index) {
            routeFunction(index);
          },

          /*all elements in navbar*/
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "LIST"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "ADD"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "ACCOUNT"),
          ],
        ),
      ),
    );
  }
}
