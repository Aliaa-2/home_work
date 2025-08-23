// Question 16
//  Write a Dart program that evaluates three integer variables with different logical and comparison expressions.
//Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on one of the expressions.
void main() {
  int a = 5;
  int b = 10;
  int c = 20;
  if (a > b && a > c) {
    print('Rule passed.');
  } else {
    print('Rule failed.');
  }
}
