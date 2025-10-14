import 'package:flutter/material.dart';


class MiddleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container( width: 185, height: 100,color: Color(0XFFE7F6EA),
            child: Column(
              children: [
                Container(width: 185, height: 45, color: Color(0XFFA5D6A7),),
                Container(height: 10,),
                Container(width: 185, height: 45, color: Color(0XFFA5D6A7),),
              ],
            ),
            ),
            Container(width: 10,),
            Container( width: 185, height: 100,color: Color(0XFFFFF3DD),
            child: Row(
              children: [
                Container(width: 87.5, height: 100, color: Color(0XFFFFCC80),),
                Container(width: 10,),
                Container(width: 87.5, height: 100, color: Color(0XFFFFCC80),),
              ],
            ),
          ),
        ],
        
      ),
      Container(height: 15,),
      Column(
        children: [
          Row(
            children: [
              Container(width: 185, height: 100, color: Color(0XFFF4E5F5),
              child: Row(
                children: [
                  Container(width: 87.5, height: 100, color: Color(0XFFE1BEE8),),
                  Container(width: 10,),
                  Container(width: 87.5, height: 100, color: Color(0XFFE1BEE8),
                  child: Column(
                    children: [
                      Container(width: 87.5,height: 45,color: Color(0XFFCE93D8),),
                      Container(height: 10,),
                      Container(width: 87.5,height: 45,color: Color(0XFFCE93D8),),
                      ],
                  ),),
                ],
              ),
              ),
              Container(width: 10,),
              Container(width: 185, height: 100, color: Color(0XFFE7F6EA),
              child: Row(
                children: [
                  Container(width: 92.5, height: 100, color: Color(0XFFE1BEE8),),
                  Container(width: 92.5, height: 100, color: Color(0XFFF3E5F6),),
                ],
              ),
              ),
            ],
          )
        ],
      )
    ],
  );
  }
}