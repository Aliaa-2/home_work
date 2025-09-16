//  Q7
//  Ask the user to input a list of integers.- Print the largest number, the smallest number, and their difference.- Calculate the average of the list.- Print all numbers that are above the average.- Finally, print how many numbers are even and how many are odd in the list
import 'dart:io';

void main() {
  List<int> numbers = [];
  int evenCount = 0;
  int oddCount = 0;
  int sum = 0;
  for (int i = 0; i < 6; i++) {
    print('enter 6 numbers (${i + 1}):');
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }
  int smallest = numbers[0];
  int largest = numbers[0];
  for (var element in numbers) {
    sum += element;

    if (element > largest) {
      largest = element;
    }
    if (element < smallest) {
      smallest = element;
    }

    if (element % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }
   double average = sum / numbers.length;

  for (var number in numbers) {
    if (number > average) {
      print('$number above the average');
    }
    
  }
  
  print(
    'largest number = $largest, smallest number = $smallest and difference = ${largest - smallest}',
  );
  print('average = $average');
  print('even numbers count = $evenCount and odd numbers count = $oddCount');
}
