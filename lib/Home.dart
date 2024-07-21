import 'package:calculator_project/components/calculatorDevice.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Colors.grey.shade500,


    //AppBar
      appBar: AppBar(

        title:  Text(
          'Calculator',
          style: TextStyle(
            letterSpacing: 3,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade300
          ),
        ),

        centerTitle: true,
        backgroundColor: Colors.grey.shade800,
      ),

      body: Center(
        
        child: CalculatorDevice()
      ),


    );
  }
}