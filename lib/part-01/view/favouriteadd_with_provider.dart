import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/part-01/model_view/provier_controller/provier_controller.dart';

class FavouriterWithProvider extends StatefulWidget {
  const FavouriterWithProvider({super.key});

  @override
  State<FavouriterWithProvider> createState() => _FavouriterWithProviderState();
}

class _FavouriterWithProviderState extends State<FavouriterWithProvider> {
  @override
  Widget build(BuildContext context) {
    final counterPro = Provider.of<CounterProvider>(context, listen: false);
    // print("rebuild");
    return Scaffold(
        appBar: AppBar(
          title: Text("Favourite color add "),
          centerTitle: true,
        ),
        body: Consumer<CounterProvider>(
          builder: (context, value, child) {
            return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      if (counterPro.favouriteList.contains(index)) {
                        counterPro.removeFromFavourite(index);
                        print("remove from favourite list");
                      } else {
                        counterPro.addToFavourite(index);
                        print("add to favourite list");
                      }
                    },
                    title: Text("Color choace"),
                    trailing: Icon(
                      Icons.favorite,
                      color: counterPro.favouriteList.contains(index)
                          ? Colors.red
                          : Colors.white,
                    ),
                  );
                });
          },
        ));
  }
}
