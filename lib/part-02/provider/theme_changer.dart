import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:http/http.dart';
class ThemeChanger with ChangeNotifier{

  var _themeMode=ThemeMode.light;
  ThemeMode get themeMode=>_themeMode;
  void setTheme(themeMode){
    _themeMode=themeMode;
    notifyListeners();
  }



  bool _isTrue=true;
  bool get isTrue=> _isTrue;
void setVisibility(){
  _isTrue=!isTrue;
  notifyListeners();
}

bool _isLoadin=false;
bool get isLoadin=>_isLoadin;
setLoadin(bool value){
  _isLoadin=value;
  notifyListeners();
}

  TextEditingController _emailController=TextEditingController();
TextEditingController get emailController=>_emailController;

  TextEditingController _passwordController=TextEditingController();
  TextEditingController get passwordController=>_passwordController;


  void loginApi()async{
    String url="https://reqres.in/api/login";

 try{
   Response response= await post(Uri.parse(url),
       body: {
         "email":_emailController.text.toString(),
         "password":_passwordController.text.toString()
       });
   if(response.statusCode==200){
     setLoadin(false);
     print("login successfull");
     notifyListeners();
   }else{
     setLoadin(false);
     print("connection faild");
     notifyListeners();
   }

 }catch(e){
   setLoadin(false);
   print(e.toString());
 }
notifyListeners();
  }


}