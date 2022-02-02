import 'package:flutter/material.dart';


import '../constants.dart';
class AppBarWidget extends StatelessWidget {


final String title;

AppBarWidget(this.title);
  @override
  Widget build(BuildContext context) {
    return AppBar(
       backgroundColor: Colors.transparent,
  elevation: 0,
centerTitle: true,
   title: Row(
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
              onPressed: (){},
             icon: Icon(Icons.arrow_back)
            ),
          ),
        ),
        SizedBox(width: 50,),
          Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ],
    )
   
    );
  }
}

