import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/part-02/provider/theme_changer.dart';

class DarkThemScreen extends StatefulWidget {
  const DarkThemScreen({super.key});

  @override
  State<DarkThemScreen> createState() => _DarkThemScreenState();
}

class _DarkThemScreenState extends State<DarkThemScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Dark Theme"),
      ),
      body: Column(
        children: [
          RadioListTile(
              title: Text("Light Mode"),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme),
          RadioListTile(
              title: Text("Dark Mode"),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme),
          RadioListTile(
              title: Text("System Mode"),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme),
        ],
      ),
    );
  }
}
