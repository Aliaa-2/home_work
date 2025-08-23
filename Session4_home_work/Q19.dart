//  Question 19
//  Write a Dart program that converts a list of names to a set of unique values. Create a map with counts of occurrences.
//Compare lengths and print a message if a specific name appears more than
//  once.

void main() {
  List<String> names = ['python', 'dart', 'python', 'java', 'c++', 'c++', 'c#'];
  var uniqueValues = names.toSet();
  Map<String, int> counts = {
    'python': 2,
    'dart': 1,
    'java': 1,
    'c++': 2,
    'c#': 1,
  };
  print(uniqueValues.length == counts.length);
  if (counts['python'] == 2 ) {
    print('Python appears more than once.');
  } else {
    print('Python appears ones.');
  }
}
