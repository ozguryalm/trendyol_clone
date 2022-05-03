import 'package:flutter/material.dart';

class MainProvider with ChangeNotifier {
  int bottombarIndex = 0;
  int get pageIndex => bottombarIndex;

  void onPageChange(int index) {
    bottombarIndex = index;
    notifyListeners();
  }
}
