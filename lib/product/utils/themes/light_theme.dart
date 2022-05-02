import 'package:flutter/material.dart';

import '../constants.dart';

ThemeData myLightTheme = ThemeData(
    backgroundColor: bacgroundColorLight,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xffE38138), elevation: 0),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    shadowColor: Colors.grey,
    colorScheme: const ColorScheme.light(
        secondary: orangeColor,
        primary: orangeColor,
        brightness: Brightness.light,
        background: Colors.white),
    textTheme: const TextTheme(
        bodySmall: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)));
