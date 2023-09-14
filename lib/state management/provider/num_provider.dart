import 'package:flutter/material.dart';

class NumberListProvider extends ChangeNotifier{
  List<int>number=[1,2,3,4,5];
  void add(){
    number.add(number.last+1);
    notifyListeners();
  }
}