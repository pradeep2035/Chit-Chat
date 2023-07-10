import 'package:flutter/material.dart';

const Color darkbluish = Color(0xFF060359);

class Themes{
  // light mode
  static final light = ThemeData(
        primaryColor: darkbluish,
        appBarTheme: AppBarTheme(color:darkbluish),
        brightness: Brightness.light,
  );
 
 // darkmode
  static final dark = ThemeData(
        primaryColor: darkbluish,
        appBarTheme: AppBarTheme(color:darkbluish),
        brightness:Brightness.dark
      );
      




}