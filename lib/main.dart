import 'input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 final theme = ThemeData(
   fontFamily: 'Raleway',
   
   colorScheme: ColorScheme.light().copyWith( 
     primary: Color(0xffD5D6D8),
     
     
   ),
 );
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   theme: theme,
   home: InputPage(),
 );
  }
}
