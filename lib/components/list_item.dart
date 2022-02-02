import 'package:flutter/material.dart';

import '../constants.dart';

class ListItem extends StatelessWidget {
  final String leftPart;
  final String rightPart;
  ListItem(this.leftPart, this.rightPart);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              leftPart,
              style: TextStyle(
  fontFamily: 'Raleway-Black',
  fontSize: 17,
  color: Colors.grey[700],
),
            ),
            Text(
              rightPart,
              style:  TextStyle(
  fontFamily: 'Raleway-Black',
  fontSize: 17,
  color: Colors.black,
),
            ),
          ],
        ),
      ),
    );
  }
}
