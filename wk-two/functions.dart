// Function to calculate the total price of items in the cart with an optional tax parameter
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double subtotal = prices.reduce((a, b) => a + b);
  double tax = subtotal * taxRate;
  return subtotal + tax;
}

// Anonymous function to filter out items below a certain threshold
List<double> filterItems(List<double> prices, double threshold) {
  return prices.where((price) => price >= threshold).toList();
}

// Higher-order function to apply a discount using a discount function
List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map((price) => discountFunction(price)).toList();
}

// Discount function to reduce a price by a given percentage
double percentageDiscount(double price, double percent) {
  return price * (1 - percent / 100);
}

// Recursive function to calculate factorial (for factorial discount)
int calculateFactorial(int n) {
  if (n <= 1) return 1;
  return n * calculateFactorial(n - 1);
}

// Special discount function based on factorial of the number of items
double calculateFactorialDiscount(int itemCount) {
  return calculateFactorial(itemCount).toDouble();
}

void main() {
  // Sample cart with item prices
  List<double> cartPrices = [25.0, 15.0, 8.0, 30.0, 5.0];
  double taxRate = 0.05; // 5% tax

  // Step 1: Filter items with an anonymous function to remove items priced below $10
  List<double> filteredPrices = filterItems(cartPrices, 10.0);
  print("Filtered Prices (Items >= \$10): $filteredPrices");

  // Step 2: Apply a discount of 10% to all items using a higher-order function
  List<double> discountedPrices = applyDiscount(filteredPrices, (price) => percentageDiscount(price, 10));
  print("Discounted Prices (10% off): $discountedPrices");

  // Step 3: Calculate the total price with tax
  double totalWithTax = calculateTotal(discountedPrices, taxRate: taxRate);
  print("Total with Tax: \$$totalWithTax");

  // Step 4: Apply a special factorial discount based on the number of items in the cart
  int itemCount = discountedPrices.length;
  double factorialDiscountPercent = calculateFactorialDiscount(itemCount);
  double finalPrice = totalWithTax * (1 - factorialDiscountPercent / 100);
  print("Final Price after Factorial Discount ($factorialDiscountPercent% off): \$$finalPrice");
}

