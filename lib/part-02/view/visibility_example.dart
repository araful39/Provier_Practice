import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/part-02/provider/theme_changer.dart';
class VisibilityExample extends StatelessWidget {
  const VisibilityExample({super.key});

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context,listen: false);
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Visibility"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: themeChanger.emailController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal)
                ),
                suffix: InkWell(
                    onTap: (){
                      themeChanger.setVisibility();
                      print("printe");
                    },
                    child: Icon(themeChanger.isTrue?Icons.visibility:Icons.visibility_off))
              ),
              obscureText:themeChanger.isTrue,
              obscuringCharacter: "*",

            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                print("Login");
              },
              child: Container(
                height: 50,width: 150,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
