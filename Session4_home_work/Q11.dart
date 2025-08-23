// Question 11
//  Write a Dart program that applies discounts to a price. Use nested if/else to apply different discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
//  Print the final price.

void main() {
  String user = 'student';
  double price = 750;
  double discount;
  bool coupon = true;
  double finalPrice;
  if (user == 'student') {
    if (coupon == true || price > 1000) {
      discount = 0.30;
      finalPrice = price * (1 - discount);
      print('You have 30% discount,Final Price is $finalPrice EG');
    } else {
      discount = 0.10;
      finalPrice = price * (1 - discount);
      print('You have 10% discount,Final Price is $finalPrice EG');
    }
  }
}
