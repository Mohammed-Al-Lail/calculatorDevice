

import 'package:calculator_project/components/Buttons.dart';
import 'package:calculator_project/components/resultBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class CalculatorDevice extends StatefulWidget {

   CalculatorDevice({super.key});

  @override
  State<CalculatorDevice> createState() => _CalculatorDeviceState();
}

class _CalculatorDeviceState extends State<CalculatorDevice> {

  String theExpression =""; // The expression (which will be written by the user in the calculator)
  double firstNum = 1;
  double secondtNum = 1;
  String operation = ''; //  (will be changed latter on based on the required operation)
  bool isInitial = true ;

  //Methods ......

// this method is to write the expresion on the result box
  void updatExpression(String string){

      isInitial = false ;
      setState(() {
        theExpression += string;
      });
  }

  


  // This method will be for the (addition) operation 
  void add(){

    try{ // try block for the invalid expression
      firstNum = double.parse(theExpression); // save the value of the first number if was valid number
      } on FormatException{

          setState(() {
            theExpression = "Error"; // if the number was invalid
            
          });
          return; // go out the method if we had error
        }

      // else if the number was valid do this ......
    setState(() {
      operation = " + "; // make the operation = +
      theExpression= "" ; // make the expression = "" , again so that we can get the second number

    });

  }

  // This method will be for the (substraction) operation 
  void substract(){

    try{ // try block for the invalid expression
      firstNum = double.parse(theExpression); // save the value of the first number if was valid number
      } on FormatException{

          setState(() {
            theExpression = "Error"; // if the number was invalid
            
          });
          return; // go out the method if we had error
        }

      // else if the number was valid do this ......
    setState(() {
      operation = " - "; // make the operation = -
      theExpression= "" ; // make the expression = "" , again so that we can get the second number

    });

  }

  // This method will be for the (multiblication) operation 
  void multibly(){

    try{ // try block for the invalid expression
      firstNum = double.parse(theExpression); // save the value of the first number if was valid number
      } on FormatException{

          setState(() {
            theExpression = "Error"; // if the number was invalid
            
          });
          return; // go out the method if we had error
        }

      // else if the number was valid do this ......
    setState(() {
      operation = " x "; // make the operation = *
      theExpression= "" ; // make the expression = "" , again so that we can get the second number

    });

  }


  // This method will be for the (division) operation 
  void devide(){

    try{ // try block for the invalid expression
      firstNum = double.parse(theExpression); // save the value of the first number if was valid number
      } on FormatException{

          setState(() {
            theExpression = "Error"; // if the number was invalid
            
          });
          return; // go out the method if we had error
        }

      // else if the number was valid do this ......
    setState(() {
      operation = " / "; // make the operation = /
      theExpression= "" ; // make the expression = "" , again so that we can get the second number
      

    });

  }

  

// This method will be for the (equal) operation 
void findResult(){ 

      double result =1 ; // make initial value for the final  result
      
      try{ // try block for the invlid expression
      secondtNum = double.parse(theExpression); // get the second number if valid
      } on FormatException{

          setState(() {
            theExpression = "Error"; // if the number was invalid
            
          });
          return; // go out the method if we had error
        }

  // if the number was valid ....

      // for addition case 
    if (operation == " + ") { 
      result = firstNum + secondtNum ;
      setState(() {
        theExpression = result.toString();
      });
      
      }

      // for substraction case 
    if (operation == " - ") { 
      result = firstNum - secondtNum ;
      setState(() {
        theExpression = result.toString();
      });
      
      }

      // for multiblication case 
    if (operation == " x ") { 
      result = firstNum * secondtNum ;
      setState(() {
        theExpression = result.toString();
      });
      
      }

      // for division case 
    if (operation == " / ") { 
      result = firstNum / secondtNum ;
      setState(() {
        theExpression = result.toString();
      });
      
      } 

      operation= " = "; // change the operation
        
    
      // After 10 seconds we will make the expression to be empty aotumatically
  //   Future.delayed(const Duration(seconds: 10), () {
  //     clear(); // make the expression = ""
  // });

  } // end of find result method


    // This method will be for the (AC) operation 
  void clear(){

      isInitial = true ;
      operation = "AC";
      setState(() { // we will make all the variables go back to the initial state
        firstNum = 1 ;
        secondtNum = 1;
        theExpression = '';
        
      });
  }


// ----------------------------------- build widget --------------------------------------------------

  @override
  Widget build(BuildContext context) {

    

    return  Container( // The general container

      width: 320,
      height: 500,
      
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(14)
      ),
      child:  Column( // The main child
        
        children: [

          SizedBox(height: 25,),

          ResultBox(expression: isInitial ? "0" : theExpression),

          SizedBox(height: 25,),

          // 1st ROW
          Row( // in each row we will have 3 numbers and 1 operation

            children: [

              CalculatorButton(
                charhectar: 'AC',
                width: 180,
                color: Colors.blue.shade700,
                onTap: clear,

              ),
              
              Expanded(child: SizedBox()),
              CalculatorButton(
                charhectar: '+',
                width: 45,
                color: operation == " + " ?  Colors.yellow : Colors.orange.shade700 ,
                onTap: add 
                  
                  
                 

              ),
            ],
          ), // End of 1st Row 

          SizedBox(height: 10,),

          // 2nd ROW
          Row( // in each row we will have 3 numbers and 1 operation

            children: [

              CalculatorButton(
                charhectar: '7',
                width: 45,
                color: Colors.grey,
                onTap:(){ 
                  updatExpression('7') ; 
                  },

              ),
              CalculatorButton(
                charhectar: '8',
                width: 45,
                color: Colors.grey,
                onTap: (){
                  updatExpression('8') ;
                },

              ),
              CalculatorButton(
                charhectar: '9',
                width: 45,
                color: Colors.grey,
                onTap: (){
                  updatExpression('9') ;
                },

              ),
              Expanded(child: SizedBox()),
              CalculatorButton(
                charhectar: '-',
                width: 45,
                color: operation == " - " ?  Colors.yellow : Colors.orange.shade700 ,
                onTap: substract
              ),
            ],
          ), // end of 2nd row

          SizedBox(height: 10,),

          // 3rd ROW
          Row( // in each row we will have 3 numbers and 1 operation

            children: [

              CalculatorButton(
                charhectar: '4',
                width: 45,
                color: Colors.grey,
                onTap: (){
                  updatExpression('4') ;
                },

              ),
              CalculatorButton(
                charhectar: '5',
                width: 45,
                color: Colors.grey,
                onTap: (){
                  updatExpression('5') ;
                },

              ),
              CalculatorButton(
                charhectar: '6',
                width: 45,
                color: Colors.grey,
                onTap: (){
                  updatExpression('6') ;
                },

              ),
              Expanded(child: SizedBox()),
              CalculatorButton(
                charhectar: 'x',
                width: 45,
                color: operation == " x " ?  Colors.yellow : Colors.orange.shade700 ,
                onTap: multibly

              ),
            ],
          ), // end of 3rd row

          SizedBox(height: 10,),

          // 4rh ROW
          Row( // in each row we will have 3 numbers and 1 operation

            children: [

              CalculatorButton(
                charhectar: '1',
                width: 45,
                color: Colors.grey,
                onTap: (){
                  updatExpression('1') ;
                },

              ),
              CalculatorButton(
                charhectar: '2',
                width: 45,
                color: Colors.grey,
                onTap: (){
                  updatExpression('2') ;
                },

              ),
              CalculatorButton(
                charhectar: '3',
                width: 45,
                color: Colors.grey,
                onTap: (){
                  updatExpression('3') ;
                },

              ),
              Expanded(child: SizedBox()),
              CalculatorButton(
                charhectar: '/',
                width: 45,
                color: operation == " / " ?  Colors.yellow : Colors.orange.shade700 ,
                onTap: devide

              ),
            ],
          ), // end of 4rh row

          SizedBox(height: 2,),

          //5th ROW 
          Row(

            children: [

              SizedBox(width: 10,),

              CalculatorButton(
                charhectar: '0',
                width: 100,
                color: Colors.grey,
                onTap: (){
                  updatExpression('0') ;
                },
              ),

              CalculatorButton(
                charhectar: '.',
                width: 45,
                color: Colors.grey,
                onTap: (){
                  updatExpression('.') ;
                },
              ),


              Expanded(child: SizedBox(),),

              CalculatorButton(
                charhectar: '=',
                width: 45,
                color: Colors.green.shade700,
                onTap: (){
                  findResult();
                },

              ),
              
            ],
          )
              

      
        ],
      ),
    );
  }
}