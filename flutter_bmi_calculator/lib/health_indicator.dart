import 'package:flutter/material.dart';

class HealthIndicator extends StatelessWidget {
  final mycolor;
  final text;
  const HealthIndicator({super.key,
  required this.mycolor,
  required this.text,
  
  });

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: mycolor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10)
                  )
                ),
              ),
              SizedBox(height: 10,),
              Text(text),
                ],
              );
  }
}