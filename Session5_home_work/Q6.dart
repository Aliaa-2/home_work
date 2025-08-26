//  Q6
//  Create a program that calculates the factorial of 6 and prints the result

void main() {
  int result = 1;
  for (int i = 1; i <= 6; i++) {
    result *= i;
  }
  print(result);
}
