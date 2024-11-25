// Abstraction: Define an abstract class with abstract methods
abstract class Animal {
  // Abstract method (must be implemented by subclasses)
  void sound();

  // Concrete method with a default implementation
  void sleep() {
    print("This animal is sleeping.");
  }
}

// Inheritance: Dog class inherits from Animal class
class Dog extends Animal {
  @override
  void sound() {
    print("The dog barks: Woof!");
  }

  // Polymorphism: Method overriding (Dog overrides sleep)
  @override
  void sleep() {
    print("The dog is sleeping in its bed.");
  }
}

// Inheritance: Cat class inherits from Animal class
class Cat extends Animal {
  @override
  void sound() {
    print("The cat meows: Meow!");
  }

  // Polymorphism: Method overriding (Cat overrides sleep)
  @override
  void sleep() {
    print("The cat curls up to sleep.");
  }
}

// Encapsulation: Class representing a bank account
class BankAccount {
  // Private variable (not accessible directly outside the class)
  double _balance;

  // Constructor to initialize the bank account balance
  BankAccount(this._balance);

  // Encapsulation: Getter method to access the balance
  double get balance => _balance;

  // Encapsulation: Setter method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: \$${amount}. New balance: \$$_balance");
    } else {
      print("Invalid deposit amount.");
    }
  }

  // Encapsulation: Setter method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && _balance >= amount) {
      _balance -= amount;
      print("Withdrew: \$${amount}. New balance: \$$_balance");
    } else {
      print("Invalid withdrawal amount or insufficient funds.");
    }
  }
}

void main() {
  // Demonstrate Abstraction, Inheritance, Polymorphism
  Animal myDog = Dog();
  myDog.sound(); // Output: The dog barks: Woof!
  myDog.sleep(); // Output: The dog is sleeping in its bed.

  Animal myCat = Cat();
  myCat.sound(); // Output: The cat meows: Meow!
  myCat.sleep(); // Output: The cat curls up to sleep.

  // Demonstrate Encapsulation
  BankAccount account = BankAccount(1000);
  print("Initial balance: \$${account.balance}"); // Initial balance: $1000
  account.deposit(500); // Output: Deposited: $500. New balance: $1500
  account.withdraw(200); // Output: Withdrew: $200. New balance: $1300
  print("Final balance: \$${account.balance}"); // Output: Final balance: $1300
}
