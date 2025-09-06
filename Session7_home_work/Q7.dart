//  Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains and how many characters (excluding spaces).

import 'dart:io';

void main() {
  print('enter a short sentence.');
  String sentence = stdin.readLineSync()!;
  var words = sentence.split(' ');
  int characters = 0;
  print('words count: ${words.length}');
  for (int i = 0; i < sentence.length; i++) {
    if(sentence[i] != ' '){
      characters++;

    }
    
  }
  print('characters count: $characters');
}
