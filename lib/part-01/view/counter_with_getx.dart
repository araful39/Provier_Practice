import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider_practice/part-01/model_view/controller/controller.dart';
class CounterWithGetx extends StatefulWidget {
  const CounterWithGetx({super.key});

  @override
  State<CounterWithGetx> createState() => _CounterWithGetxState();
}

class _CounterWithGetxState extends State<CounterWithGetx> {
  CounterController _counterController=Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter With Getx"),
      centerTitle: true,
      ),
      body: Center(
        child: Obx(() => Text("Conuter: ${_counterController.counter}")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         _counterController.increementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
