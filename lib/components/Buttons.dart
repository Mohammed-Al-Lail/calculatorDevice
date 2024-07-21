import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {

  const CalculatorButton({

    super.key,
    required this.charhectar,
    required this.width,
    required this.color,
    required this.onTap,
    
    });

  final String charhectar ;
  final double width ;
  final Color color ;
  final void Function() onTap ;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
          
            width: width ,
            height: 45,
            color: color,
      
            child: Center(
              child: Text(
                charhectar,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            
          
          ),
        ),
      ),
    );
  }
}