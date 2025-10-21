import 'package:flutter/material.dart';
import 'gender_section.dart';
import 'result_page.dart';

class BmiCalculator extends StatefulWidget {
  @override
  State<BmiCalculator> createState() => _MyAppState();
}

class _MyAppState extends State<BmiCalculator> {
  int height = 174;
  int weight = 60;
  int age = 29;
  double calculatedBmi = 0;

  Widget heightSection() {
    return SizedBox(
      width: 385,
      child: Card(
        color: Color(0XFF17172F),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'HEIGHT',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$height',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'cm',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ],
              ),
              SliderTheme(
                data: SliderThemeData(
                  trackHeight: 1,
                  activeTrackColor: Color(0XFFB9B9C1),
                  inactiveTrackColor: Color(0XFF818390),
                  thumbColor: Colors.pink,
                  overlayColor: Colors.pinkAccent,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
                ),
                child: Slider(
                  value: height.toDouble(),
                  min: 100,
                  max: 220,
                  onChanged: (value) {
                    setState(() {
                      height = value.round();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget weightCard() {
    return SizedBox(
      width: 180,
      height: 175,
      child: Card(
        color: Color(0XFF17172F),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('WEIGHT', style: TextStyle(color: Colors.grey, fontSize: 20)),
            Text(
              '$weight',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (weight > 0) {
                        weight--;
                      } else {
                        weight = 0;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Color(0XFF4B4E5F),
                    fixedSize: Size(80, 40),
                  ),
                  child: Icon(Icons.remove, color: Colors.white, size: 35),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      weight++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Color(0XFF4B4E5F),
                    fixedSize: Size(80, 40),
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 35),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget ageCard() {
    return SizedBox(
      width: 180,
      height: 175,
      child: Card(
        color: Color(0XFF17172F),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('AGE', style: TextStyle(color: Colors.grey, fontSize: 20)),
            Text(
              '$age',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (age > 0) {
                        age--;
                      } else {
                        age = 0;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Color(0XFF4B4E5F),
                    fixedSize: Size(80, 40),
                  ),
                  child: Icon(Icons.remove, color: Colors.white, size: 35),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      age++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Color(0XFF4B4E5F),
                    fixedSize: Size(80, 40),
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 35),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget calculateButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          calculatedBmi = weight / ((height / 100) * (height / 100));
        });
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(bmi: calculatedBmi),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 70),
        shape: LinearBorder(),

        backgroundColor: Color(0XFFED0D54),
      ),
      child: Text(
        'CALCULATE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF03051A),
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Color(0XFF04061D),
        title: Text(
          'BMI CALCULATOR ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 12),
          GenderSection(),
          SizedBox(height: 25),
          heightSection(),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [weightCard(), SizedBox(width: 25), ageCard()],
          ),
          SizedBox(height: 201),
          calculateButton(),
        ],
      ),
    );
  }
}
