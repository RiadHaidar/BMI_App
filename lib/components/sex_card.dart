
import 'package:flutter/material.dart';



class SexCard extends StatelessWidget {
  final String text;
  final IconData icon;
  SexCard(this.text,this.icon);
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Icon(icon, size: 50,
        color: Colors.white,
        ), 
        Text(text, 
        style: TextStyle( 
          fontSize: 20, 
          fontWeight: FontWeight.bold, 
          color: Colors.white
        ),),
      ],
    );
  }
}
