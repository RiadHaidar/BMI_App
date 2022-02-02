
import 'package:flutter/material.dart';
import 'constants.dart';
import './screens/input_page.dart';
void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
     home: InputPage(),
    //  initialRoute: '/',
    //   routes:{
    //     '/':(ctx) =>InputPage(), 
    //     ResultPage.resultPageRoute: (ctx)=> ResultPage(),
    //   } ,
    );
  }
}
