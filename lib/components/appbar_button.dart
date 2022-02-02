import 'package:bmicalculatorapp/constants.dart';
import 'package:flutter/material.dart';




class appBarButton extends StatelessWidget {
 final IconData icon;
final void Function() handleWight;


appBarButton (this.icon,this.handleWight);
  @override
  Widget build(BuildContext context) {
    return Container(
       width:5,
      height: 5,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
       boxShadow: boxShadowx,
        color:Color(0xffD5D6D8),
       
      ),
      child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
        child:IconButton(icon: Icon(icon),onPressed: handleWight,) ,
      ),
    );
  }
}
