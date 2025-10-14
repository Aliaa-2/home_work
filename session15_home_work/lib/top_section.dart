import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 370, height: 200, color: Color(0xFFE4F2FD)),
          ],
        ),
        Container(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 30, height: 20, color: Color(0XFFE0E0E0)),
            Container(width: 10,),
            Container(width: 330, height: 20, color: Color(0XFFE0E0E0)),
          ],
        ),
        Container(height: 10,),
        Divider(
          thickness: 2,
          color: Color(0XFFE0E0E0),
        ),
      ], 
    );
    
  }
}
