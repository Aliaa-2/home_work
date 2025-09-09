//  Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest number and the second largest number (without sorting the list)

import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 6; i++) {
    print('enter 6 numbers(${i + 1})');
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }
  int largestNumber = numbers[0];
  int secondNumber = numbers[0];
  for (var number in numbers) {
    if (largestNumber < number) {
      secondNumber = largestNumber;
      largestNumber = number;
    }
    if (secondNumber < number && number < largestNumber) {
      secondNumber = number;
    }
  }
  print('Largest Number: $largestNumber');
  if (largestNumber != secondNumber) {
    print('Second Largest Number: $secondNumber');
  } else {
    print('There is no Second Largest Number');
  }
}
