import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/main_components/navbar.dart';
import 'package:shopping_app/main_pages/home.dart';
import 'package:shopping_app/theme_data/theme.dart';

import 'main_pages/list.dart';
import 'theme_data/theme.dart' as MyTheme;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "home": (context) => HomePage(),
          "list": (context) => ListPage(),
        },
        title: 'Flutter Demo',
        theme: MyTheme.LightTheme,
        darkTheme: MyTheme.DarkTheme,
        home: Scaffold(
            bottomNavigationBar: BottomBar(),
            appBar: AppBar(),
            body: HomePage()));
  }
}
