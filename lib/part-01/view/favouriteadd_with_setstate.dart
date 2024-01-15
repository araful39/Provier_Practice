import 'package:flutter/material.dart';

class FavouriteWithState extends StatefulWidget {
  const FavouriteWithState({super.key});

  @override
  State<FavouriteWithState> createState() => _FavouriteWithStateState();
}

class _FavouriteWithStateState extends State<FavouriteWithState> {
  List favouriteList = [];
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite add with setstate"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
                onTap: () {
                  setState(() {
                    if (favouriteList.contains(index)) {
                      favouriteList.remove(index);
                    } else {
                      favouriteList.add(index);
                    }
                  });
                },
                title: Text("Red Colore"),
                trailing: favouriteList.contains(index)
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ));
          }),
    );
  }
}
