import 'package:flutter/foundation.dart';

class MyData extends ChangeNotifier {
  String name;
  int age;

  MyData({required this.name,required this.age});
}