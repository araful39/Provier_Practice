import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt counter=1.obs;
 var name="Raju".obs;

void increementCounter(){
  counter++;
}
}