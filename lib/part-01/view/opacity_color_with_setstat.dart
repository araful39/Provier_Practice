import 'package:flutter/material.dart';
class OpatcityWtihState extends StatefulWidget {
  const OpatcityWtihState({super.key});

  @override
  State<OpatcityWtihState> createState() => _OpatcityWtihStateState();
}

class _OpatcityWtihStateState extends State<OpatcityWtihState> {
  double opacity=0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity with setstate"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.teal.withOpacity(opacity),
                    ),
                    height: 400,
                    // width: 100,
                  ),
                ),
                Expanded(
                  child: Container(
                  
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red.withOpacity(opacity),
                    ),
                    height: 400,
                    // width: 100,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Slider(value: opacity, onChanged: (value){

              setState(() {
                opacity=value;
              });
            })
          ],
        ),
      ),
    );
  }
}
