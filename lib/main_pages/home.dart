import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_app/pages_components/list_page/list.dart';
import 'package:shopping_app/pages_components/main_page/box.dart';

class HomePage extends StatelessWidget {
  @override
  List<int> listElementText = List.filled(15, 0);
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width / 20),
        child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Divider(
                  height: size.height / 20,
                  color: Colors.transparent,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      "- YOUR LIST",
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
                Expanded(
                  child: ShaderMask(
                    shaderCallback: (Rect rect) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Theme.of(context).backgroundColor,
                          Colors.transparent,
                          Colors.transparent,
                          Theme.of(context).backgroundColor
                        ],
                        stops: [0.0, 0.05, 0.95, 1.0],
                      ).createShader(rect);
                    },
                    blendMode: BlendMode.dstOut,
                    child: ListView(
                        padding: EdgeInsets.symmetric(vertical:10), 
                      children: listElementText
                          .map((element) => BoxList(
                                iDate: "10",
                                iListName: "ciano",
                                iItemsNumber: 15,
                                iItemsPicked: 10,
                                iItemsToPick: 5,
                              ))
                          .toList(),
                    ),
                  ),
                ),

                /*SingleChildScrollView(*/
                /*child: Column(*/
                /*children: listElementText*/
                /*.map((element) => BoxList(*/
                /*iDate: "10",*/
                /*iListName: "ciano",*/
                /*iItemsNumber: 15,*/
                /*iItemsPicked: 10,*/
                /*iItemsToPick: 5,*/
                /*))*/
                /*.toList(),*/
                /*),*/
                /*),*/
              ],
            )
            /*child: Column(*/
            /*children: [*/
            /*Container(*/
            /*color: Theme.of(context).backgroundColor,*/
            /*child: BoxList(*/
            /*iDate: "10",*/
            /*iListName: "ciano",*/
            /*iItemsNumber: 15,*/
            /*iItemsPicked: 10,*/
            /*iItemsToPick: 5,*/
            /*),*/
            /*),*/
            /*ListElement(*/
            /*iTitle: "pesce",*/
            /*iSubTitle: "buono",*/
            /*iQuantity: "100g",*/
            /*),*/
            /*],*/
            /*),*/
            ),
      ),
    );
  }
}
