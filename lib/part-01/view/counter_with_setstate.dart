import 'package:flutter/material.dart';
class CounterWithSetstate extends StatefulWidget {
  const CounterWithSetstate({super.key});

  @override
  State<CounterWithSetstate> createState() => _CounterWithSetstateState();
}

class _CounterWithSetstateState extends State<CounterWithSetstate> {
  int counter=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter With Sestate"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Counter: ${counter}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter++;
          setState(() {

          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
