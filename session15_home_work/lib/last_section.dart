import 'package:flutter/material.dart';

class LastSection  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return(
      Column(children: [
        Row(
        children: [
          Container(
            width: 185,
            height: 70,
            color: Color(0XFFB2DFDC),
          ),
          Container(width: 10,),
          Container(
            width: 185,height: 70, color: Color(0XFF80CBC4),
          )
        ], 
        ),
        Container(height: 15,),
        Container(width: 380,height: 50, color: Color(0XFFE0E0E0),),
      ],)
    );
  }
}