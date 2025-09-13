//  Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
//  courses: one with custom duration and one with the default. Print both

void main() {
  Course c1 = Course('dart', 4);
  Course c2 = Course('python');
  print('Course name: ${c1.title} with custom duration ${c1.duration} months');
  print('Course name: ${c2.title} with default duration ${c2.duration} months');

}

class Course {
  String title;
  int duration;
  Course(this.title, [this.duration = 3]);
}
