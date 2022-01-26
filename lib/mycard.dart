import 'package:flutter/material.dart';



class MyCard extends StatelessWidget {
  final double width;
  final double height;
  Color color;
  final Widget? cardChild;
  MyCard( 
    
    {required this.width,
   required this.height,
  required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    
    return Container(
       width: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.height * height,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
       boxShadow: [
         BoxShadow(
               color:Color(0xffE6E6E8),
                blurRadius: 9.0,
                spreadRadius: 8.0,
                offset: Offset(0.0, 0.0),), 
                BoxShadow(
               color: Color(0xff2BA1BB),
                blurRadius: 5.0,
                spreadRadius: 0.0,
                offset: Offset(4.0, 4.0),), 
            ],
        color:color,
       
      ),
      child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
        child: cardChild,
      ),
    );
  }
}
