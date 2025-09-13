//  Q4 Create a class Employee with attributes name and salary. Add a method giveRaise(int amount) that increases the salary. In main(), create an employee, give them a raise, and print the new
//  salary.

void main() {
  Employee e1 = Employee('ahmed', 10000);
  e1.giveRaise(7500);
  print('new Salary = ${e1.salary}\$');
}

class Employee {
  String name;
  int salary;

  Employee(this.name, this.salary);

  void giveRaise(int amount) {
    salary += amount;
  }
}
