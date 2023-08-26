abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited: \$${amount.toStringAsFixed(2)}');
    print('New Balance: \$${balance.toStringAsFixed(2)}');
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance += balance * interestRate;
    print('Withdrawn: \$${amount.toStringAsFixed(2)}');
    print('New Balance after applying interest: \$${balance.toStringAsFixed(2)}');
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (balance - amount >= -overdraftLimit) {
      balance -= amount;
      print('Withdrawn: \$${amount.toStringAsFixed(2)}');
      print('New Balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Insufficient funds to withdraw \$${amount.toStringAsFixed(2)}');
    }
  }
}

void main() {
  // Creating an instance of SavingsAccount
  final savingsAccount = SavingsAccount(12345, 1000.0, 0.05);
  savingsAccount.deposit(500.0);
  savingsAccount.withdraw(200.0);

  // Creating an instance of CurrentAccount
  final currentAccount = CurrentAccount(67890, 1500.0, 500.0);
  currentAccount.deposit(300.0);
  currentAccount.withdraw(2000.0);
}
