import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/part-01/model_view/provier_controller/provier_controller.dart';
import 'package:provider_practice/part-01/view/counter_with_getx.dart';
import 'package:provider_practice/part-01/view/counter_with_provider.dart';
import 'package:provider_practice/part-01/view/favouriteadd_with_getx.dart';
import 'package:provider_practice/part-01/view/favouriteadd_with_provider.dart';
import 'package:provider_practice/part-01/view/favouriteadd_with_setstate.dart';
import 'package:provider_practice/part-01/view/opacity_color_with_setstat.dart';
import 'package:provider_practice/part-01/view/opacity_with_getx.dart';
import 'package:provider_practice/part-01/view/opacity_with_provier.dart';
import 'package:provider_practice/part-02/provider/theme_changer.dart';
import 'package:provider_practice/part-02/view/dark_theme.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final themeChanger =Provider.of<ThemeChanger>(context);
    return
    //   ChangeNotifierProvider(create: (_)=>CounterProvider(),child: GetMaterialApp(
    //   home: CounterWithProvier(),
    // ),);
      MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> CounterProvider()),
        ChangeNotifierProvider(create: (_)=> ThemeChanger()),

    ],
    child: Builder(builder: (BuildContext context){
      final themeChanger=Provider.of<ThemeChanger>(context);
      return GetMaterialApp(
        title: "Flutter demo",
        theme:  ThemeData(
          // brightness:Brightness.dark,
          primarySwatch: Colors.teal,
        ),
        themeMode: Provider.of<ThemeChanger>(context).themeMode,
        darkTheme: ThemeData(
// backgroundColor: Colors.red
        primarySwatch: Colors.red,
            primaryColor: Colors.red,
            brightness:Brightness.dark,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.red
          )
        ),
        home: DarkThemScreen(),
      );
    })
    );
    return GetMaterialApp(
      home: CounterWithGetx(),
      debugShowCheckedModeBanner: false,
    );
  }
}
