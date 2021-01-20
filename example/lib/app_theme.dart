import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: Colors.blue,
  canvasColor: Colors.white,
  scaffoldBackgroundColor: Colors.grey.shade50,
  accentColor: Colors.blue,
  primaryColorBrightness: Brightness.light,
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    elevation: 0,
    actionsIconTheme: IconThemeData(color: Colors.grey.shade900, size: (24)),
    iconTheme: IconThemeData(color: Colors.grey.shade900, size: (24)),
    color: Colors.white,
    centerTitle: false,
  ),
);
