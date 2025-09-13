//  Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
//  Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2

import 'dart:io';

void main() {
  print('enter a number: ');
  int number = int.parse(stdin.readLineSync()!);
  var digits = number.toString();
  int sum = 0;

  for (int i = 0; i < digits.length; i++) {
    sum += int.parse(digits[i]);
    if(i == digits.length-1){
      stdout.write('${digits[i]}');
    }else{
      stdout.write('${digits[i]}+');
    }
  }
  stdout.write('= $sum => ');

  var newSum = sum.toString();
  int finalSum = 0;

  while (newSum.length > 1) {
    for (int i = 0; i < newSum.length; i++) {
      finalSum += int.parse(newSum[i]);
      if(i == newSum.length-1){
        stdout.write('${newSum[i]}');
      }else{
        stdout.write('${newSum[i]}+');
      }
    }
    stdout.write('= $finalSum =>');
    newSum = finalSum.toString();
    finalSum = 0;
  }
 
}
