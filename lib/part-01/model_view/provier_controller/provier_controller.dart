import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
  int _count=1;
  double _opacity=0.1;
  int get count=> _count;
  double get opacity=>_opacity;
  void updateCounter(){
    _count++;
    notifyListeners();
  }
  void updateOpacity(double value){
    _opacity=value;
    notifyListeners();
  }
}