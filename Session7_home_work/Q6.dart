//  Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user guess up to 3 times. If they fail, reveal the correct number.
import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int number = random.nextInt(20) + 1;
  int? guess;
  int Tries = 0;

  for (int i = 0; i <= 2; i++) {
    print('Guess a number: ');
    guess = int.parse(stdin.readLineSync()!);
    Tries++;
    if (guess == number) {
      print('correct.');
      break;
    }
  }
  if (Tries == 3 && guess! != number) {
    print('Sorry correct number is $number.');
  }
}
