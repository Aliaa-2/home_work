//  Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
//  print the total count of unique words

import 'dart:io';

void main() {
  Map<String, int> WordCount = {};
  int uniqueCount = 0;
  print('enter a sentence.');
  String sentence = stdin.readLineSync()!.toLowerCase();
  var words = sentence.split(' ');
  print(words);
  for (var word in words) {
    if (WordCount.containsKey(word)) {
      WordCount[word] = WordCount[word]! + 1;
    } else {
      WordCount[word] = 1;
    }
  }
  WordCount.forEach((word, count) {
    if (count == 1) {
      print(word);
      uniqueCount += 1;
    }
  });
  print('unique word Count = $uniqueCount');
}
