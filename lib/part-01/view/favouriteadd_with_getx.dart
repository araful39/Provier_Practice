import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider_practice/part-01/model_view/controller/controller.dart';

class FavouriteWithGetx extends StatefulWidget {
  const FavouriteWithGetx({super.key});

  @override
  State<FavouriteWithGetx> createState() => _FavouriteWithGetxState();
}

class _FavouriteWithGetxState extends State<FavouriteWithGetx> {
  final CounterController _counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite add with Getx"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                if (_counterController.favouriteList.contains(index)) {
                  _counterController.removeFromFavouriteList(index);
                } else {
                  _counterController.addToFavouriteList(index);
                }
              },
              title: Text("Red color"),
              trailing:
                  Obx(() => _counterController.favouriteList.contains(index)
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite,
                          color: Colors.white,
                        )),
            );
          }),
    );
  }
}
