// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:trendyol_clone/view/home/men/page_men.dart';
import 'package:trendyol_clone/view/home/page_home.dart';
import 'package:trendyol_clone/view/home/women/page_women.dart';
import 'package:trendyol_clone/view/main/page_main.dart';

const String HOME = "/home";
const String MEN = "/men";
const String WOMEN = "/women";
const String MAIN = "/main";

Map<String, Widget Function(BuildContext)> routes =
     <String, WidgetBuilder>{
      HOME:(context) => const HomePage(),
      MEN:(context) => const MenPage(),
      WOMEN:(context) => const WomenPage(),
      MAIN:(context) => const MainPage(),
    };
