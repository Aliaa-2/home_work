//  Q3. Modify Attributes - Create a class Person with attributes name and age. - Create an object and  set its initial values using a constructor. - Then change the age of the object and print the updated
//  details

void main() {
  Person p = Person('aliaa', 20);
  p.age = 22;
  print(p.age);
}

class Person {
  String? name;
  int? age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
}
