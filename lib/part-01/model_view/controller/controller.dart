import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;
  var name = "Raju".obs;
  RxDouble opactiy = 0.0.obs;
  RxList favouriteList = [].obs;


  void increementCounter() {
    counter++;
    update();
  }

  void getOpacity(double val) {
    opactiy.value = val;
    update();
  }
void addToFavouriteList(int index){
    favouriteList.add(index);
}
void removeFromFavouriteList(int index){
    favouriteList.remove(index);
}

}
