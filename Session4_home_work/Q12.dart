//  Question 12
//  Create a Dart program that safely reads a phone number from a map. If the phone number is null, print a default message. Then update the phone number and print its length.

void main() {
  Map<String, dynamic> phone = {'number': '01025849142'};
  dynamic correctNumber = phone['number'];
  if (correctNumber == null) {
    print('please enter your phone number');
    correctNumber = '01123944182';
    print(correctNumber.length);
  } else {
    print('your number is $correctNumber');
  }
}
