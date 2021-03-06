import 'package:flutter/material.dart';

import '../constants.dart';

ThemeData myDarkTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xffE38138), elevation: 0),
    backgroundColor: bacgroundColorDark,
    shadowColor: Colors.black,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    colorScheme: const ColorScheme.dark(
      primary: orangeColor,
      secondary: orangeColor,
      brightness: Brightness.dark,
    ),
    textTheme: const TextTheme(
        bodySmall: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)));
