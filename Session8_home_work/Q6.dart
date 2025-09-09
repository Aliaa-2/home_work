// Q6. Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains.
// Then print the shortest word and the longest word from the sentence

import 'dart:io';

void main() {
  String shortest;
  String longest;
  print('enter a sentence: ');
  String sentence = stdin.readLineSync()!;
  if (sentence.isNotEmpty) {
    var wordCount = sentence.split(' ');
    longest = wordCount[0];
    shortest = wordCount[0];
    print(wordCount.length);

    wordCount.forEach((word) {
      if (word.length > longest.length) {
        longest = word;
      }
      if (word.length < shortest.length) {
        shortest = word;
      }
    });
    print('longest word :$longest');
    print('shortest word: $shortest');
  }
}
