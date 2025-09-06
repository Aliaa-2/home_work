// Q8. Digits Operations - Ask the user for a number (e.g., 528). - Print the sum of its digits and also  print the largest digit

import 'dart:io';

void main() {
  print('enter a number: ');
  String number = stdin.readLineSync()!;
  int sum = 0;
  int max = 0;

  for (int i = 0; i < number.length; i++) {
    int digit = int.parse(number[i]);
    if (digit > max) {
      max = digit;
    }
    sum += digit;
  }
  print(sum);
  print(max);
}
