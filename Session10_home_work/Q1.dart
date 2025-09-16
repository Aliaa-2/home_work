//  Q1
//  Create a class BankAccount with a private field _balance.- Add a getter balance that returns the balance.- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).- In main(), demonstrate creating an account, updating the balance, and trying to set a negative
//  balance.

void main() {
  BankAccount account = BankAccount(500);
  account.balance = 1500;
  print(account.balance);
}

class BankAccount {
  double _balance;
  BankAccount(this._balance);

  double get balance => this._balance;
  set balance(double balance) {
    if (balance >= 0) {
      this._balance = balance;
    } else {
      print('Invalid balance');
    }
  }
}
