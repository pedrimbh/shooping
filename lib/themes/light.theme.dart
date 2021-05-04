import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF00C569);
const lightColor = const Color(0xFFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);
const dangerColor = const Color(0xDDDD0000);

ThemeData lightTheme() {
  return ThemeData(
      // primarySwatch: primaryColor,
      brightness: brightness,
      textTheme: TextTheme(
          // bodyText1: TextStyle(color: Colors.red),
          // headline4: TextStyle(fontSize: 36, color: Colors.red),
          button: TextStyle(color: Colors.green)),
      primaryColor: primaryColor,
      accentColor: Colors.white);
}
