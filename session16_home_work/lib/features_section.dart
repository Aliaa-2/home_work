import 'package:flutter/material.dart';

class FeatureCards extends StatelessWidget {
  const FeatureCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Features',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Card(
          elevation: 2,
          color: Colors.white,
          child: SizedBox(
            width: 363,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0XFFEFEBF9),
                    ),
                    width: 40,
                    height: 40,
                    child: Icon(
                      Icons.speed,
                      color: Color(0XFF8160B9),
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fast Performance',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        'Lighting fast app performance',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 100),
                  Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey),
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 2,
          color: Colors.white,
          child: SizedBox(
            width: 360,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0XFFE8F5FE),
                    ),
                    width: 40,
                    height: 40,
                    child: Icon(
                      Icons.security,
                      color: Color(0XFF2396F0),
                      size: 25,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Secure',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        'Your data is safe with us',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 125),
                  Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey),
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 4,
          color: Colors.white,
          child: SizedBox(
            width: 360,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0XFFFFF4E8),
                    ),
                    width: 40,
                    height: 40,
                    child: Icon(
                      Icons.palette,
                      color: Color(0XFFF89905),
                      size: 25,
                    ),
                  ),
                  SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Beautiful UI',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Modern and clean design',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 125),
                  Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
