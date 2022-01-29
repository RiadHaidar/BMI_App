import 'package:flutter/material.dart';




class buttonContainer extends StatelessWidget {
 final IconData icon;
final void Function() handleWight;


  buttonContainer(this.icon,this.handleWight);
  @override
  Widget build(BuildContext context) {
    return Container(
       width:40,
      height: 40,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
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
        color:Color(0xffD5D6D8),
       
      ),
      child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
        child:IconButton(icon: Icon(icon),onPressed: handleWight,) ,
      ),
    );
  }
}
