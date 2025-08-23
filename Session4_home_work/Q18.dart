// Question 18
// Write a Dart program that reads environment variables from a map. If a value is null, replace it with  a default.
//Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on conditions.

void main() {
  Map<String, dynamic> reads = {
    'first': 'windows',
    'second': 'linux',
    'third': null,
  };
  var environment = reads;
  if (environment.containsValue(null)) {
    environment['third'] = 'default';
    print('Non-prod.');
  } else {
    print('Prod ready.');
  }
  print(environment.values.toString().toUpperCase());
}
