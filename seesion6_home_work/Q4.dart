// Q4
//  Create a program with a map of student names to their marks. Print the name of the student with the highest mark

void main() {
  Map<String, double> studentMarks = {
    'Ahmed': 70.5,
    'Ali': 50.9,
    'Mona': 92.34,
    'Adel': 80.25,
  };
  var marks = studentMarks.values.toList();
  marks.sort();
  studentMarks.forEach((name, mark) {
    if (mark == marks.last) {
      print(name);
    }
  });
}
