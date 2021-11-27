import 'package:flutter/material.dart';

class BoxList extends StatefulWidget {
  final String iListName;

  final String iDate;
  final int iItemsNumber;
  final int iItemsPicked;
  final int iItemsToPick;
  const BoxList({
    Key? key,
    this.iDate = "",
    this.iListName = "",
    this.iItemsNumber = 0,
    this.iItemsPicked = 0,
    this.iItemsToPick = 0,
  }) : super(key: key);

  @override
  State<BoxList> createState() => _BoxList();
}

class _BoxList extends State<BoxList> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 100,
        width: size.width * .8,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            border: Border.all(color: Theme.of(context).hintColor, width: 1),
            color: Theme.of(context).backgroundColor,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                        Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(child: Text("·", style: Theme.of(context).textTheme.headline3,)),
                            Spacer(flex:1),
                          ],
                        ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.iListName, style: Theme.of(context).textTheme.headline4),
                          Spacer(),
                          Text(widget.iDate, style: Theme.of(context).textTheme.subtitle1),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Text("${widget.iItemsNumber} items", style: Theme.of(context).textTheme.headline5),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right:20),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                          Text("- ${widget.iItemsPicked} done", style: Theme.of(context).textTheme.subtitle1,),
                          Text("- ${widget.iItemsToPick} no done", style: Theme.of(context).textTheme.subtitle1),
                        ]),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
