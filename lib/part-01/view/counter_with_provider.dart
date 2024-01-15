import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/part-01/model_view/provier_controller/provier_controller.dart';
class CounterWithProvider extends StatefulWidget {
  const CounterWithProvider({super.key});

  @override
  State<CounterWithProvider> createState() => _CounterWithProviderState();
}

class _CounterWithProviderState extends State<CounterWithProvider> {
  @override
  Widget build(BuildContext context) {
    print("reBuild");
    final conterPro=Provider.of<CounterProvider>(context,listen: false);
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
conterPro.updateCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
