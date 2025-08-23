//  Question 13
//  Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch statement to print a message for each grade

void main() {
  double mark = 81.5;
  String? grade;
  if (mark >= 90 && mark <= 100) {
    grade = 'A';
  } else if (mark >= 80 && mark < 90) {
    grade = 'B';
  } else if (mark >= 70 && mark < 80) {
    grade = 'C';
  } else if (mark >= 60 && mark < 70) {
    grade = 'D';
  } else if (mark < 60) {
    grade = 'F';
  }
  
  switch (grade) {
    case 'A':
      print('your grade is Excellent.');
      break;
    case 'B':
      print('your grade is Very Good.');
      break;
    case 'C':
      print('your grade is Good.');
      break;
    case 'D':
      print('your grade is Fair.');
      break;
    case 'F':
      print('your grade is Fail.');
      break;
    default:
        print('Invalid Input.');
  }
}
