import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
          height: size.height,
          width: size.width,
      child: Container(
          color: Theme.of(context).backgroundColor,
          ),
    );
  }
}
