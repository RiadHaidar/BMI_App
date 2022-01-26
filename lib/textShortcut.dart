import 'package:flutter/material.dart';



class TextShortcut extends StatelessWidget {
String text;
TextStyle style;
TextShortcut(this.text,this.style);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(text, style:style,),
    );
  }
}
