// Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also count how many vowels it has.

import 'dart:io';

void main() {
  print('please enter any word');
  String word = stdin.readLineSync()!.toLowerCase();
  var update = word.split('');
  int count = 0;
  var vowels = ['a', 'e', 'i', 'o', 'u'];
  print('Reversed: ${update.reversed.join()}');
  for (int i = 0; i < update.length; i++) {
    if (vowels.contains(update[i])) {
      count++;
    }
  }
  print('Vowels Count: $count');
}
