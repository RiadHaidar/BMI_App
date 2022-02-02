import 'package:bmicalculatorapp/constants.dart';
import 'package:flutter/material.dart';
import '../calculator_brain.dart';
import '../constants.dart';
import '../components/list_item.dart';
import 'input_page.dart';
class InformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
            backgroundColor: Colors.transparent,
  elevation: 0,
centerTitle: true,
   title: Text('BMI Information',style: TextStyle(color: Colors.black),),
   leading: IconButton (
                 icon: Icon(Icons.arrow_back), 
                 onPressed: () { 
                    Navigator.of(context).pop();
                 },
            ),
        ),
        //   actions: [ 
        //   appBarButton(Icons.arrow_back, (){ 
        //     Navigator.of(context).pop();
        //   })
        // ],), )
      
                backgroundColor: inActiveCardColor,
        body: Column(
           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // MyCard(width: 100, height: 0.1, color: Colors.black),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffE6E6E8),
                        blurRadius: 9.0,
                        spreadRadius: 8.0,
                        offset: Offset(0.0, 0.0),
                      ),
                      BoxShadow(
                        color: Color(0xff2BA1BB),
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                        offset: Offset(4.0, 4.0),
                      ),
                    ],
                    color: inActiveCardColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Your BMI   ",style: TextStyle(
  fontFamily: 'Raleway-Black',
  fontSize: 20,
  color: Colors.grey[700],
),),

Text("${(bmi).toStringAsFixed(1)}",style: TextStyle(
  fontFamily: 'Raleway-Black',
  fontSize: 30,
  //fontWeight: FontWeight.bold,
  color: Colors.black,
), ),

 Text("   ${finalResult}",style: TextStyle(
  fontFamily: 'Raleway-Black',
  fontSize: 20,
  color: Colors.grey[700],
),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  
                  height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffE6E6E8),
                          blurRadius: 9.0,
                          spreadRadius: 8.0,
                          offset: Offset(0.0, 0.0),
                        ),
                        BoxShadow(
                          color: Color(0xff2BA1BB),
                          blurRadius: 5.0,
                          spreadRadius: 0.0,
                          offset: Offset(4.0, 4.0),
                        ),
                      ],
                      color: inActiveCardColor,
                    ),
                  child: ListView( 
                    children: [ 
                      ListItem("Less than 16","Severely Underweight"),
                      Divider(
                        thickness: 1,
                          indent: 30,
                          endIndent: 30,
                        color: Colors.grey,),
                      ListItem("16 to 18.4","Underweight"),
Divider(
                        thickness: 1,
                          indent: 30,
                          endIndent: 30,
                        color: Colors.grey,),
                      ListItem("18.5 to 24.9","Normal"),
                      Divider(
                        thickness: 1,
                          indent: 30,
                          endIndent: 30,
                        color: Colors.grey,),
                      ListItem("25 to 29.9","Overweight"),
                    Divider(
                        thickness: 1,
                          indent: 30,
                          endIndent: 30,
                        color: Colors.grey,),
                      ListItem("30 to 34.9","Obesity Class 1"),
                     Divider(
                        thickness: 1,
                          indent: 30,
                          endIndent: 30,
                        color: Colors.grey,),
                      ListItem("35 to 39.9","Obesity Class 2"),
                     Divider(
                        thickness: 1,
                          indent: 30,
                          endIndent: 30,
                        color: Colors.grey,),
                       ListItem("Greater than 40","Obesity Class 3"),
                  
                    ],
                  ),
                ),
              ),






            ]),
      ),
    );
  }
}

