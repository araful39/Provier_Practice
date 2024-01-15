import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/part-01/model_view/provier_controller/provier_controller.dart';
import 'package:provider_practice/part-01/view/counter_with_getx.dart';
import 'package:provider_practice/part-01/view/counter_with_provider.dart';
import 'package:provider_practice/part-01/view/opacity_color_with_setstat.dart';
import 'package:provider_practice/part-01/view/opacity_with_getx.dart';
import 'package:provider_practice/part-01/view/opacity_with_provier.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
    //   ChangeNotifierProvider(create: (_)=>CounterProvider(),child: GetMaterialApp(
    //   home: CounterWithProvier(),
    // ),);
      MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> CounterProvider()),

    ],
    child: GetMaterialApp(
      home: OpacityWithProvider(),
    ),
    );
    return GetMaterialApp(
      home: CounterWithGetx(),
      debugShowCheckedModeBanner: false,
    );
  }
}
