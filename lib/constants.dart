import 'package:flutter/material.dart';

List<BoxShadow> boxShadowx=  [
                 BoxShadow(
                      color:inActiveCardColor,
                      blurRadius: 9.0,
                      spreadRadius: 8.0,
                      offset: Offset(0.0, 0.0),
                    ),
                    BoxShadow(
                      color: activeCardColor,
                      blurRadius: 5.0,
                      spreadRadius: 0.0,
                      offset: Offset(4.0, 4.0),
                    ),
                  ];

const TextStyle selectionStyle = TextStyle( 
          fontSize: 20, 
          fontWeight: FontWeight.bold, 
          color: Colors.white
        );
const TextStyle kgStyle = TextStyle(
                                    fontFamily: 'Raleway-Black',
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  );
const Text appTitle = Text(
    'BMI CALCULATOR',
   // style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold ,),
  );
Color activeCardColor = Color(0xff2BA1BB);
Color inActiveCardColor = Color(0xffD5D6D8);
AppBar appBar = AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  title: appTitle,
  centerTitle: true,

);
const cardColor = Color(0xffD5D6D8);
TextStyle styleOfText = TextStyle(
  fontFamily: 'Raleway-Black',
  fontSize: 20,
  color: Colors.grey[700],
);
const TextStyle numberStyle = TextStyle(
  fontFamily: 'Raleway-Black',
  // fontWeight: FontWeight.bold,
  fontSize: 40.0,
  color: Colors.black,
);

  final theme = ThemeData(
    fontFamily: 'Raleway-Regular',
    colorScheme: ColorScheme.light().copyWith(
      primary: Color(0xffD5D6D8),
    ),
  );
