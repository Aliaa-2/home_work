//  Q2
//  Create a program with the list [5, 10, 15, 20, 25]. Print the average of the numbers.
void main() {
  List<int> numbers = [5, 10, 15, 20, 25];
  int average = 0;
  for (var num in numbers) {
    average += num;
  }
  print(average / numbers.length);
}
