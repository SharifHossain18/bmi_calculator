
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends StatelessWidget {
   Test({super.key});

  var bmi='su'.obs;

  void change(){
    bmi="sujon".obs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 300,),
          Center(
            child: GestureDetector(
              onTap: () {
                bmi="arpa".obs;
                change();
              },
              child: Container(
                height: 200,
                width: 300,
                color: Colors.amber,
                child: Obx(() => Text(" Bmi$bmi")),
            
              ),
            ),
          )
        ],
      ),
    );
    
  }
}