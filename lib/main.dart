import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/part-01/model_view/provier_controller/provier_controller.dart';
import 'package:provider_practice/part-01/view/counter_with_getx.dart';
import 'package:provider_practice/part-01/view/counter_with_provider.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> CounterProvider()),

    ],
    child: GetMaterialApp(
      home: CounterWithProvier(),
    ),
    );
    return GetMaterialApp(
      home: CounterWithGetx(),
      debugShowCheckedModeBanner: false,
    );
  }
}
