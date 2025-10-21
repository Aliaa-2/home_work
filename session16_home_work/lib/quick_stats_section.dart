import 'package:flutter/material.dart';

class QuickStats extends StatelessWidget {
  const QuickStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Stats',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              elevation: 4,
              color: Colors.white,
              child: SizedBox(
                width: 100,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Icon(Icons.group, color: Color(0XFF8160B9), size: 30),
                      Text(
                        '1,234',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text('Users', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              color: Colors.white,
              child: SizedBox(
                width: 100,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Icon(Icons.star, color: Color(0XFFFF9800), size: 30),
                      Text(
                        '4.8',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text('Rating', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              color: Colors.white,
              child: SizedBox(
                width: 100,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Icon(
                        Icons.trending_up,
                        color: Color(0XFF3B94DC),
                        size: 30,
                      ),
                      Text(
                        '98%',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text('Success', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
