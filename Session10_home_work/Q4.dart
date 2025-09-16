// Q4
//  Create a class Product with private fields _name and _price.- Reject empty names and negative prices in setters.- Add a computed getter discountedPrice that returns the price with a 10% discount applied.- In main(), demonstrate setting values and printing the original and discounted price.

void main() {
  Product p1 = Product('product one', 1500);

  print('original price = ${p1.price}');
  print('discounted price = ${p1.discountedPrice}');
}

class Product {
  String _name;
  double _price;

  Product(this._name, this._price);

  set name(String name) {
    if (name.isNotEmpty) {
      this._name = name;
    } else {
      print('Invalid product name');
    }
  }

  set price(double price) {
    if (price >= 0) {
      this._price = price;
    } else {
      print('Invalid price');
    }
  }

  double get price => this._price;

  double get discountedPrice => this._price * (1 - 0.1);
}
