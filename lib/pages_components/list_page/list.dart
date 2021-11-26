import 'package:flutter/material.dart';

class ListElement extends StatefulWidget {
  const ListElement({
    Key? key,
    this.iTitle = "",
    this.iSubTitle = "",
    this.iQuantity = "",
  }) : super(key: key);
  final String iTitle;
  final String iSubTitle;
  final String iQuantity;

  @override
  _ListElementState createState() => new _ListElementState();
}

// organize this page

class _ListElementState extends State<ListElement> {
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
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 4,
                          width: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                        VerticalDivider(width: 10,),
                        Text(widget.iTitle),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 4,
                          width: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            color: Theme.of(context).backgroundColor,
                          ),
                        ),
                        VerticalDivider(width: 10,),
                        Text(widget.iSubTitle),
                      ],
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
                Container(child: Text(widget.iQuantity)),
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
