import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {

  
  const ResultBox({
    super.key,
    required this.expression
    
    });

// we must pass the expression to the box
  final  String expression;
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
        
          width: 280,
          height: 50,
          color: Colors.grey.shade400,
        
          child: Center(
        
            child: Text(
              expression,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}