import 'package:flutter/material.dart';
import 'welcome_ section.dart';
import 'quick_stats_section.dart';
import 'features_section.dart';
import 'app_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 55),
          child: Column(
            children: [
              WelcomeCard(),
              SizedBox(height: 20),
              QuickStats(),
              SizedBox(height: 25),
              FeatureCards(),
              SizedBox(height: 100),
              AppButton(),
            ],
          ),
        ),
      ),
    );
  }
}
