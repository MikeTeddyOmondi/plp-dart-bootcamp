// Data Types and Variable Initialization
void defineVariables() {
  int intVar = 10;
  double doubleVar = 20.5;
  String stringVar = "Hello, Dart!";
  bool boolVar = true;
  List<int> listVar = [1, 2, 3, 4, 5];

  print("int: $intVar");
  print("double: $doubleVar");
  print("String: $stringVar");
  print("bool: $boolVar");
  print("List: $listVar");
}

// Type Conversion Functions
int convertStringToInt(String value) {
  return int.parse(value);
}

double convertStringToDouble(String value) {
  return double.parse(value);
}

String convertIntToString(int value) {
  return value.toString();
}

double convertIntToDouble(int value) {
  return value.toDouble();
}

// Function for Conversion and Display
void convertAndDisplay(String numberStr) {
  int intValue = convertStringToInt(numberStr);
  double doubleValue = convertStringToDouble(numberStr);

  print("String to int: $intValue");
  print("String to double: $doubleValue");
}

// Control Flow Examples
void checkNumber(int num) {
  if (num > 0) {
    print("The number is positive.");
  } else if (num < 0) {
    print("The number is negative.");
  } else {
    print("The number is zero.");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("Eligible to vote.");
  } else {
    print("Not eligible to vote.");
  }
}

void printDayOfWeek(int dayNumber) {
  switch (dayNumber) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day number");
  }
}

// Loop Examples
void printNumbersForLoop() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void printNumbersWhileLoop() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

void printNumbersDoWhileLoop() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

// Combining Data Types and Control Flow
void analyzeList(List<int> numbers) {
  for (var number in numbers) {
    print("Number: $number");

    // Check if the number is even or odd
    if (number % 2 == 0) {
      print("Even");
    } else {
      print("Odd");
    }

    // Categorize the number
    switch (number) {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        print("Category: Small");
        break;
      default:
        if (number >= 11 && number <= 100) {
          print("Category: Medium");
        } else if (number > 100) {
          print("Category: Large");
        }
    }
  }
}

void main() {
  // Step 1: Data Types Implementation
  print("Define Variables:");
  defineVariables();

  // Step 2: Type Conversion
  print("\nType Conversion:");
  print("Convert String to int: ${convertStringToInt("123")}");
  print("Convert String to double: ${convertStringToDouble("123.45")}");
  print("Convert int to String: ${convertIntToString(123)}");
  print("Convert int to double: ${convertIntToDouble(123)}");

  // Step 3: Function for Conversion
  print("\nConvert and Display:");
  convertAndDisplay("456");

  // Step 4: Control Flow - If-Else Statements
  print("\nIf-Else Statements:");
  checkNumber(10);
  checkNumber(-5);
  checkNumber(0);

  checkVotingEligibility(20);
  checkVotingEligibility(16);

  // Step 5: Control Flow - Switch Case
  print("\nSwitch Case:");
  printDayOfWeek(3);
  printDayOfWeek(7);
  printDayOfWeek(10);

  // Step 6: Control Flow - Loops
  print("\nFor Loop:");
  printNumbersForLoop();

  print("\nWhile Loop:");
  printNumbersWhileLoop();

  print("\nDo-While Loop:");
  printNumbersDoWhileLoop();

  // Step 7: Combining Data Types and Control Flow
  print("\nAnalyze List:");
  List<int> numbers = [3, 8, 15, 105];
  analyzeList(numbers);
}
