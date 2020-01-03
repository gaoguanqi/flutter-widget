import 'package:flutter/material.dart';
class LikeProvider with ChangeNotifier{

  int _count = 0;
  LikeProvider();
  LikeProvider.ofCount(this._count);
  get count => _count;

  void add(){
    _count++;
    notifyListeners();
  }

  void sub(){
    _count--;
    notifyListeners();
  }
}