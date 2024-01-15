import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/part-01/model_view/provier_controller/provier_controller.dart';
class CounterWithProvier extends StatefulWidget {
  const CounterWithProvier({super.key});

  @override
  State<CounterWithProvier> createState() => _CounterWithProvierState();
}

class _CounterWithProvierState extends State<CounterWithProvier> {
  @override
  Widget build(BuildContext context) {
    print("reBuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter With Provier"
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CounterProvider>(builder: ( context,  value, child){
          return Text("Counter: ${value.count}",style: TextStyle(fontSize: 50),);
    },
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<CounterProvider>(context,listen: false).updateCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
