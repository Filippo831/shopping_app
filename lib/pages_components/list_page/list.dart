import 'package:flutter/material.dart';

class ListElement extends StatefulWidget {
  final String iTitle;
  final String iSubTitle;
  final String iQuantity;
  const ListElement({
    Key? key,
    this.iTitle = "",
    this.iSubTitle = "",
    this.iQuantity = "",
  }) : super(key: key);

  @override
  _ListElementState createState() => new _ListElementState();
}

// organize this page

class _ListElementState extends State<ListElement> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .8,
      decoration: BoxDecoration(),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Text(
                  "·",
                  style: Theme.of(context).textTheme.headline3,
                ),
                const VerticalDivider(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Center(
                          child: Text(
                            widget.iTitle,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      widget.iSubTitle,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
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
                Container(
                  child: Text(
                    widget.iQuantity,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                VerticalDivider(width: 10,),
                Container(
                  child: Icon(Icons.photo_camera_outlined, color: Theme.of(context).hintColor),
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
