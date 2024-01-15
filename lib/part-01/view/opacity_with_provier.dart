import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/part-01/model_view/provier_controller/provier_controller.dart';

class OpacityWithProvider extends StatefulWidget {
  const OpacityWithProvider({super.key});

  @override
  State<OpacityWithProvider> createState() => _OpacityWithProviderState();
}

class _OpacityWithProviderState extends State<OpacityWithProvider> {
  @override
  Widget build(BuildContext context) {
    final _opactityProvider=Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity with provider"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
        Consumer<CounterProvider>(builder: (context,value,child){
          return     Row(
            children: [
              Expanded(
                  child: Container(
                    color: Colors.pink.withOpacity(value.opacity),
                    height: 400,
                  )),
              Expanded(
                  child: Container(
                    color: Colors.indigo.withOpacity(value.opacity),
                    height: 400,
                  )),
            ],
          );
        }),
            Slider(value: _opactityProvider.opacity, onChanged: (value){
              _opactityProvider.updateOpacity(value);
            })
          ],
        ),
      ),
    );
  }
}
