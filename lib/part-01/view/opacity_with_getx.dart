import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider_practice/part-01/model_view/controller/controller.dart';

class OpacityWithGetx extends StatefulWidget {
  const OpacityWithGetx({super.key});

  @override
  State<OpacityWithGetx> createState() => _OpacityWithGetxState();
}

class _OpacityWithGetxState extends State<OpacityWithGetx> {
  CounterController _counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity With Getx"),
        centerTitle: true,
      ),
      body: Center(
          child: Obx(
        () => Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.green
                          .withOpacity(_counterController.opactiy.value),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.red
                          .withOpacity(_counterController.opactiy.value),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Slider(
                value: _counterController.opactiy.value,
                onChanged: (val) {
                  _counterController.getOpacity(val);
                })
          ],
        ),
      )),
    );
  }
}
