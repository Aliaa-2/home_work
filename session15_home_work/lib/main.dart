import 'package:flutter/material.dart';
import 'top_section.dart';
import 'middle_section.dart';
import 'last_section.dart';
void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: 
        Padding(padding: EdgeInsets.all(14),
        child: Column(
          children: [ 
            TopSection(), Container(height: 10,),MiddleSection(),
            Container(height: 15,), LastSection(),
          ],
        ),
        ),

        

      ),
    );
  }
}
