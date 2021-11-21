import 'package:flutter/material.dart';

final ThemeData LightTheme = new ThemeData.light().copyWith(
  primaryColor: const Color(0xff000000),
  primaryColorLight: const Color(0xff000000),
  backgroundColor: const Color(0xffeeeeee),
  hintColor: const Color(0xff9d9d9d),
  accentColor: const Color(0xff000000),
);

final ThemeData DarkTheme = new ThemeData.dark().copyWith(
  primaryColor: const Color(0xffffffff),
  backgroundColor: const Color(0xff2a2a2a),
  hintColor: const Color(0xffd8d8d8),
  accentColor: const Color(0xffffffff),
);
