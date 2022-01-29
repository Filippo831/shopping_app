import 'package:flutter/material.dart';
import 'package:shopping_app/main_components/navbar.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Container(
        decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "NOME LISTA",
              ),
            )
          ],
        ),
      ),
    );
  }
}
