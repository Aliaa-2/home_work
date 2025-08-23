// Question 10
//  Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
//  'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'.

void main() {
  Map<String, String> countryCodes = {
    'EG': 'Egypt',
    'SA': 'Saudi arabia',
    'Ku': 'Kuwait',
  };
  countryCodes['QA'] = 'Qatar';
  print('Total Length= ${countryCodes.length}');
  if (countryCodes.containsKey('JO')) {
    print('Jordan existing');
  } else {
    print('Jordan missing');
  }
}
