//  Q1. Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add a
//  method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call
//  the method

void main() {
  Calculator add = Calculator();
  add.num1 = 10;
  add.num2 = 5;
  add.addNumbers();
}

class Calculator {
  int? num1;
  int? num2;

  void addNumbers() {
    print(num1! + num2!);
  }
}
