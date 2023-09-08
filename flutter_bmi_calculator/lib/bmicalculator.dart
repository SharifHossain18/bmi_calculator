
import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/health_indicator.dart';
import 'package:flutter_bmi_calculator/input_field.dart';
import 'package:get/state_manager.dart';


class BmiCalculator extends StatefulWidget {
     BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
    var bmi=0.0;
    Color myColor = Colors.transparent;

    TextEditingController agecontroller=TextEditingController();

    TextEditingController weightcontroller=TextEditingController();

    TextEditingController heightcontroller=TextEditingController();

calculate_bmi(){
    // double age=double.parse(agecontroller.text);
    double weight=double.parse(weightcontroller.text);
    double height=double.parse(heightcontroller.text);   
    double bmi=weight/(height*height);
     
      if(bmi<18.5){
        myColor = Colors.red;
      }
      else if(bmi>=18.5 && bmi<=24.9){
        myColor = Colors.green;
      }
      else if(bmi>=25 && bmi<=29.9){
        myColor = Color(0xFFEEE133);
      }
      else if(bmi>=30 && bmi<=34.9){
        myColor = Color(0xFFFD802E);
      }
      else if(bmi>=35){
        myColor = Color(0xFFF95353);
      }

     return bmi;
 

  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Column(
        children: [
         
          SizedBox(height: 50,),
          Center(child: Text("BMI CALCULATOR",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.deepOrangeAccent
          ),
          )),
          InputField(
            fieldName: "AGE",
            controller: agecontroller,    
            hinttext: "Age",       
          ),
          SizedBox(height: 20,),
          InputField(
            fieldName: "Weight",
            controller: weightcontroller, 
            hinttext: "Weight",          
          ),
          SizedBox(height: 20,),
          InputField(
            fieldName: "Height",
            controller: heightcontroller,  
            hinttext: "Height",         
          ),
          SizedBox(height: 50,),

          GestureDetector(
            onTap: () {
              
              setState(() {
                
                bmi=calculate_bmi();
              });
              
            },
            child: Container(
              height: 60,
              width: 150,
              
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Center(child: Text("Calculate",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.yellowAccent
              ),
              )),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            height: 100,
            width: 300,
            
            decoration: BoxDecoration(
              color: myColor,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          child: Center(child: Text("Bmi ${bmi.toStringAsFixed(1)}",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            )),
            
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                HealthIndicator(
                  mycolor: Colors.red, 
                  text: "Underweight"),
                  
                HealthIndicator(
                  mycolor: Colors.green, 
                  text: "Normal"),
                  HealthIndicator(
                  mycolor:  Color(0xFFEEE133), 
                  text: "Overweight"),
                HealthIndicator(
                  mycolor: Color(0xFFFD802E), 
                  text: "Obese"),
                  HealthIndicator(
                  mycolor: Color(0xFFF95353), 
                  text: "Extreme"),       
                
              ],
            ),
          )     
        ],
        
      ),
    );
  }
}
