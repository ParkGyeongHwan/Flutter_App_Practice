import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0;

  add() {
    _count++;
    notifyListeners();
  }

  remove() {
    _count--;
    notifyListeners();
  }

}