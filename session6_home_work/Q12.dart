// Q12
//  Create a function that takes named parameters firstName, lastName, and an optional named parameter age. Print the full name and, if age is provided, also print 'Age: X'
void main() {
  information(firstName: 'aliaa ', lastName: 'adel', age: 22);
}

void information({String? firstName, String? lastName, int? age}) {
  print(firstName! + lastName!);
  if (age != null) {
    print('Age: $age');
  }
}
