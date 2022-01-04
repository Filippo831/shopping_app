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
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, "list");
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          height: size.height / 8,
          width: size.width * .8,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              border: Border.all(color: Theme.of(context).hintColor, width: 1),
              color: Theme.of(context).backgroundColor,
            ),
            child: Row(
              children: [
                LeftPart(
                    title: widget.iListName.toUpperCase(), date: widget.iDate),
                const VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
                /*right information*/
                RightPart(
                    number: widget.iItemsNumber,
                    picked: widget.iItemsPicked,
                    toPick: widget.iItemsToPick)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RightPart extends StatelessWidget {
  const RightPart({
    Key? key,
    required this.number,
    required this.picked,
    required this.toPick,
  }) : super(key: key);

  final int number;
  final int picked;
  final int toPick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text("$number items",
                  style: Theme.of(context).textTheme.headline6),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "- $picked done",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text("- $toPick no done",
                        style: Theme.of(context).textTheme.subtitle1),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class LeftPart extends StatelessWidget {
  const LeftPart({
    Key? key,
    required this.title,
    required this.date,
  }) : super(key: key);

  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              /* --- left dot --- */
              children: [
                Expanded(
                  child: Text(
                    "·",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(height: .77),
                  ),
                ),
              ],
            ),
            /* --- title and date --- */
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.headline6),
                Spacer(),
                Text(date, style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
