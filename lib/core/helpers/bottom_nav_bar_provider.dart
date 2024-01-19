import 'package:flutter/material.dart';

class BottomNavProvider with ChangeNotifier {
  int curentPageIndex = 0;

  changeCurentPageIndex(int index) {
    curentPageIndex = index;
    notifyListeners();
  }
}
