import 'package:flutter/material.dart';

ThemeData light = ThemeData(
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(color: Colors.green[300]),
    listTileTheme: ListTileThemeData(tileColor: Colors.white));

ThemeData siyah = ThemeData.dark();
ThemeData beyaz = ThemeData(
    appBarTheme: AppBarTheme(color: Colors.green[300]),
    tabBarTheme:
        TabBarTheme(labelColor: Colors.white, dividerColor: Colors.green[300]));
bool durum = true;
