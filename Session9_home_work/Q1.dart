// Q1 Create a class City with attributes name and population. In main(), create two city objects and
// print their details.

void main() {
  City c1 = City('Cairo', 20000000);
  City c2 = City('Mansoura', 5000000);
  c1.details();
  c2.details();
}

class City {
  String name;
  double population;
  City(this.name, this.population);
  void details() {
    print('City: $name, population: $population.');
  }
}
