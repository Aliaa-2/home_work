//  Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor to set the values when creating the object. - In main(), create two car objects with different data and
//  print their details.

void main() {
  Car car1 = Car('BMW', 2021);
  Car car2 = Car('Toyota', 2012);
  car1.details();
  car2.details();
}

class Car {
  String? brand;
  int? year;

  Car(String brand, int year) {
    this.brand = brand;
    this.year = year;
  }
  void details() {
    print('Car Brand: $brand and Year:$year');
  }
}
