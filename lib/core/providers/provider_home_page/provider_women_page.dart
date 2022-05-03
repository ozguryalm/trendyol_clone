import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class WomenProvider with ChangeNotifier {
  CarouselController carouselController = CarouselController();
  int sliderIndex = 0;

  void changeSliderIndex(int index) {
    sliderIndex = index;
    notifyListeners();
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
