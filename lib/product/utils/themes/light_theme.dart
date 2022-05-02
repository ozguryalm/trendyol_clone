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
        primary: Colors.white,
        brightness: Brightness.light,
        background: Colors.white),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)));
