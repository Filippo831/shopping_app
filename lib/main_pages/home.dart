import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_app/pages_components/list_page/list.dart';
import 'package:shopping_app/pages_components/main_page/box.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Container(
              color: Theme.of(context).backgroundColor,
              child: const BoxList(
                iDate: "10",
                iListName: "ciano",
                iItemsNumber: 15,
                iItemsPicked: 10,
                iItemsToPick: 5,
              ),
            ),
            List_Element(),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
            )
          ],
        ),
      ),
    );
  }
}
