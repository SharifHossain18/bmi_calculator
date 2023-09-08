import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String fieldName;
  final controller;
  final hinttext;


  const InputField({super.key,
  required this.fieldName,
  required this.controller,
  required this.hinttext
  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
              children: [
                Text(fieldName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        )
                      ),
                      hintText: hinttext,
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,


                      )
                    ),
                        
                ))
              ],
            ),
    );
  }
}