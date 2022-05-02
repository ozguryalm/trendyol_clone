import 'package:flutter/material.dart';
import 'package:trendyol_clone/view/home/page_home.dart';

class HomeProvider extends State<HomePage>
    with TickerProviderStateMixin, ChangeNotifier {
  bool allCategoriesIsOpen = false;
  int pageindex = 0;
  int pageOldindex = 0;
  int get pageIndex => pageindex;
  late TabController tabController;

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void changeAllCategoriesStatus(bool status) {
    allCategoriesIsOpen = status;
  }

  void returnOldPage() {
    onPageChange(pageOldindex);
    notifyListeners();
  }

  void onPageChange(int index) {
    if (index != 2) {
      pageOldindex = pageIndex;
    }

    pageindex = index;
    tabController.animateTo(index);
    changeAllCategoriesStatus(index == 2 ? true : false);
    notifyListeners();
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
