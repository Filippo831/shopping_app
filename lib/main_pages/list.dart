import 'package:flutter/material.dart';
import 'package:shopping_app/main_components/appbar.dart';
import 'package:shopping_app/main_components/navbar.dart';
import 'package:shopping_app/pages_components/list_page/list.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => new _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  List<int> testList = List.filled(10, 0);
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      appBar: MyAppBar(),
      body: new Container(
        child: Column(
          children: testList
              .map((e) => ListElement(
                    iTitle: "ciao",
                    iSubTitle: "bene",
                    iQuantity: "10",
                  ))
              .toList(),
        ),
      ),
    );
  }
}
