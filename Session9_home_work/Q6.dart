//  Q6 Create a class NumberCheck with an attribute value. Add a method isEven() that returns true if
//  the number is even, false otherwise. In main(), test the method with one number

void main() {
  NumberCheck n1 = NumberCheck(6);
  print(n1.isEven());
}

class NumberCheck {
  int value;
  
  NumberCheck(this.value);

  bool isEven() {
    
    return value %2 == 0;
  }
}
