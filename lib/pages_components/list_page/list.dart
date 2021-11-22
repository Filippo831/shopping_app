import 'package:flutter/material.dart';

class List_Element extends StatefulWidget {
  @override
  _List_ElementState createState() => new _List_ElementState();
}

class _List_ElementState extends State<List_Element> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return new Container(
      width: size.width * .8,
      decoration: BoxDecoration(),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Container(
                  height: 4,
                  width: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                    color: Theme.of(context).hintColor,
                  ),
                ),
                Column(
                  children: [
                    Text("title"),
                    Text("subtitle"),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(child: Text("50g")),
                Container(
                  child: Icon(Icons.camera, color: Theme.of(context).hintColor),
                ),
                SizedBox(
                  height: 40,
                  child: VerticalDivider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                    color: Theme.of(context).hintColor,
                  ),
                ),
                Container(
                  child: Icon(Icons.done, color: Theme.of(context).hintColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
