//  Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
//  Then, check if the average is greater than 50 or not.

import 'dart:io';

void main() {
  print('please enter the first number: ');
  int num1 = int.parse(stdin.readLineSync()!);
  print('please enter the second number: ');
  int num2 = int.parse(stdin.readLineSync()!);
  print('please enter the third number: ');
  int num3 = int.parse(stdin.readLineSync()!);
  int sum = num1 + num2 + num3;
  double average = sum / 3;
  print('sum: $sum');
  print('average: $average');
  print(average > 50);
}
