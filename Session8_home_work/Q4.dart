//  Q4. Class with Default Attribute Value - Create a class Product with attributes name and price. - Give price a default value of 0. - Create two objects: one with a custom price and one with the
//  default price. Print their details.

void main() {
  Product productOne = Product('P-one', 300);
  Product productTwo = Product('P-two');
  productOne.details();
  productTwo.details();
}

class Product {
  String? name;
  double? price ;
  Product(String name, [double price = 0]) {
    this.name = name;
    this.price = price;
  }
  void details() {
    print('product name: $name with $price');
  }
}
