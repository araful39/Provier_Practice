import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
  int _count=1;
  int get count=> _count;
  void updateCounter(){
    _count++;
    notifyListeners();
  }
}