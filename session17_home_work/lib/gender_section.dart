import 'package:flutter/material.dart';

class GenderSection extends StatelessWidget {
  const GenderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [MaleCard(), SizedBox(width: 25), FemaleCard()],
    );
  }
}

class FemaleCard extends StatelessWidget {
  const FemaleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 160,
      child: Card(
        color: Color(0XFF17172F),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Icon(Icons.female, color: Colors.white, size: 100),
              Text(
                'FEMALE',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MaleCard extends StatelessWidget {
  const MaleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 160,
      child: Card(
        color: Color.fromARGB(255, 33, 33, 43).withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Icon(Icons.male, color: Colors.white, size: 100),
              Text('MALE', style: TextStyle(color: Colors.grey, fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}