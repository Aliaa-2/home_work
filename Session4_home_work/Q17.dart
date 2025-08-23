//  Question 17
//  Write a Dart program that formats a price tag string with a currency. Apply string methods such as
//  toString, padLeft, and length to format and compare the results.

void main() {
  String priceTag = '200\$';
  print(priceTag.toString());
  var priceTag2 = priceTag.padLeft(5);
  print(priceTag.length);
  if (priceTag2.length > priceTag.length) {
    print('There is effect the price with padding is longer.');
  } else {
    print('There is no effect Length is equal.');
  }
}
