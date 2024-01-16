import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class ThemeChanger with ChangeNotifier{

  var _themeMode=ThemeMode.light;
  ThemeMode get themeMode=>_themeMode;
  void setTheme(themeMode){
    _themeMode=themeMode;
    notifyListeners();
  }


  TextEditingController emailController=TextEditingController();
  bool _isTrue=true;
  bool get isTrue=> _isTrue;
void setVisibility(){
  _isTrue=!isTrue;
  notifyListeners();
}

}