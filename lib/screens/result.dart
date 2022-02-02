import 'package:bmicalculatorapp/calculator_brain.dart';

import 'package:bmicalculatorapp/screens/information_page.dart';
import '../components/textShortcut.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../constants.dart';

import 'input_page.dart';
class ResultPage extends StatefulWidget {
  static const  String resultPageRoute = "result-route";

  @override
  State<ResultPage> createState() => _ResultPageState();
}

// String resultText(double result){
//   late String finalResult;
//   if(result < 18.5){
//     finalResult = "UnderWeight";
//   } else if( result >= 18.5 && result <=25.9){
//     finalResult = "Normal weight";
//   } else if(result >=25.0 && result <=29.9){
//     finalResult = "Overweight";
//   } else if(result >=30.0 && result <= 34.9 ){
//     finalResult = "Obesity class 1";
//     }
//     else if(result >=35.0 && result <=39.99){
//       finalResult= "Obesity class 2";
//     }
//     else{
//       finalResult = "obesity class 3";
//     }
// return finalResult;
//   }


// CalculatorBrain calculatorBrain = new CalculatorBrain(weight, sliderValue, bmi);

class _ResultPageState extends State<ResultPage> {

 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
       appBar: AppBar(
            backgroundColor: Colors.transparent,
  elevation: 0,
centerTitle: true,
   title: Text('Result Infomation',style: TextStyle(color: Colors.black),),
   leading:
   
   
    IconButton (
                 icon: Icon(Icons.arrow_back), 
                 onPressed: () { 
                    Navigator.of(context).pop();
                 },
            ),
        ),
        backgroundColor:inActiveCardColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Container(
                width: 180,
                height: 180,
                //      margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                 boxShadow: boxShadowx,
                  color: inActiveCardColor,
                ),
                child: CircularPercentIndicator(
                  
                  radius: 160.0,
                  lineWidth: 13.0,
                  animation: true,
                  animationDuration: 1500,
                  percent:double.parse( calculatorBrain.calculateBMI())/1000 ,
                  center:  Text((bmi).toStringAsFixed(1),style: styleOfText,),
                  progressColor:activeCardColor,
                ),
              ),
              
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
           //   crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      child: Center(
                        child: TextShortcut(calculatorBrain.getResult(),
                        TextStyle( 
                          fontSize: 25, 
                            fontFamily: 'Railway-Medium',
                        ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        Container(
          height: 50,
          width: 250,
          decoration: BoxDecoration(
            color: activeCardColor,
            borderRadius: BorderRadius.circular(25)),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => InformationPage()));
              },
              child: Text(
                "Show Details", 
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 20, 
          fontFamily: 'Railway-Medium'),),),),
        ),
          ],
        ),
      
    );
  }
}

/* Row(
      children: <Widget>[
      
        Container(
           width:40,
      height: 40,
  
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
       boxShadow: boxShadowx,
    color:Color(0xffD5D6D8),
       
      ),
          child: Center(
            child: IconButton(
              onPressed:  () {
                Navigator.of(context).pop();
              },
             icon: Icon(Icons.arrow_back)
            ),
          ),
        ),
        SizedBox(width: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
            'BMI info',
            style: TextStyle(color: Colors.black),
        ),
          ),
      ],
    )
   

   */