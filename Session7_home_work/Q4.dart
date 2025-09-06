//  Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
//  numbers, and then calculate the difference between them

import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 1; i <= 5; i++) {
    print('enter a number $i: ');
    int n = int.parse(stdin.readLineSync()!);
    numbers.add(n);
  }
  numbers.sort();
  print('largest number: ${numbers.last}');
  print('smallest number: ${numbers.first}');
  print('difference: ${numbers.last - numbers.first} ');
}
