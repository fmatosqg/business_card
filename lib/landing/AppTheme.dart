import 'package:flutter/material.dart';

ThemeData AppTheme = ThemeData(
    primarySwatch: Colors.green,
    textTheme: TextTheme(
      headline: buildTextStyle(fontSize: 40.0),
      subhead: buildTextStyle(fontSize: 28.0).copyWith(fontFamily: 'Oxygen'),
      body1: buildTextStyle(fontSize: 20.0),
    ));

TextStyle buildTextStyle({double fontSize = 14.0}) {
  return TextStyle(
      fontSize: fontSize,
      color: Color.fromARGB(0xff, 0x10, 0x50, 0x10),
      fontFamily: 'Varela');
}
