import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  int pageindex = 0;
  int get pageIndex => pageindex;

  void onPageChange(int index) {
    pageindex = index;
    print(pageIndex);

    notifyListeners();
  }
}
