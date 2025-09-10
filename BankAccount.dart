class BankAccount {
  String _accountNumber; // private
  String _holderName; // private
  double _balance = 0;

  BankAccount(this._accountNumber, this._holderName);

  // Getter
  double get balance => _balance;

  String get accountInfo =>
      "Account: $_accountNumber | Holder: $_holderName | Balance: $_balance";

  // Setter for deposit
  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount");
    } else {
      print("Invalid deposit amount.");
    }
  }

  // Setter for withdraw
  set withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient funds or invalid amount.");
    }
  }
}

void main() {
  var account = BankAccount("ACC123", "Ranjith");

  print(account.accountInfo);
  account.deposit = 1000;
  account.withdraw = 300;
  print("Final Balance: ${account.balance}");
}
