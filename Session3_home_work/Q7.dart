// Exercise 7:
//  7. a) Start with List numbers = [4, 4, 5, 6, 6, 7].
// b) Convert it to a Set to remove duplicates and print it.
//  c) Use add(), remove(), and contains() with the set, printing each result.

void main() {
  List<int> numbers = [4, 4, 5, 6, 6, 7];
  var newNumbers = numbers.toSet();
  newNumbers.add(1);
  print(newNumbers);
  newNumbers.remove(7);
  print(newNumbers);
  print(newNumbers.contains(5));
}
