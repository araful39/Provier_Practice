import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt counter=1.obs;
 var name="Raju".obs;
RxDouble opactiy=0.0.obs;
void increementCounter(){
  counter++;
}
void getOpacity(double val){
  opactiy.value=val;
  update();
}
}