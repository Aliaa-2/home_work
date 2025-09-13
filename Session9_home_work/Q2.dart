//  Q2 Create a class Temperature with an attribute celsius. Add a method toFahrenheit() that returns the temperature in Fahrenheit. In main(), create an object and print the converted value.

void main() {
  Temperature T1 = Temperature(25);
  print('converted value ==> ${T1.toFahrenheit()}F');
}

class Temperature {
  double celsius;

  Temperature(this.celsius);

  double toFahrenheit() {
    return 32 + ((9 / 5) * celsius);
  }
}
