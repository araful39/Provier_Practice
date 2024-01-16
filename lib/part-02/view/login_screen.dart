import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/part-02/provider/theme_changer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final loginController = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Login "),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: loginController.emailController,
              decoration: InputDecoration(
                  hintText: "Email", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: loginController.passwordController,
              decoration: InputDecoration(
                  hintText: "Password", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                loginController.loginApi();
              },
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: loginController.isLoadin
                      ? CircularProgressIndicator(
                    color: Colors.white,
                  )
                      : Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
