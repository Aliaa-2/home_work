// Exercise 2:
//  2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
//  b) Print a sentence that includes all values using string interpolation.
//  c) Change weight to a different value and print only the updated one

void main() {
  String country = 'Egypt';
  int year = 2025;
  double weight = 60.5;
  bool likeCoding = true;
  print(
    'Country: $country, Year: $year, weight: $weight and $likeCoding I like coding',
  );
  weight = 90.4;
  print(weight);
}
