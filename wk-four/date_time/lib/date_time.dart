import 'package:intl/intl.dart';

void dateAndTime() {
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // Formatting
  String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
  print("Formatted Date: $formattedDate");

  // Parsing
  DateTime parsedDate = DateFormat('yyyy-MM-dd').parse("2024-11-25");
  print("Parsed Date: $parsedDate");

  // Manipulation
  DateTime futureDate = now.add(Duration(days: 5));
  DateTime pastDate = now.subtract(Duration(days: 5));
  print("5 days from now: $futureDate");
  print("5 days ago: $pastDate");

  // Difference
  int differenceInDays = futureDate.difference(now).inDays;
  print("Difference in days: $differenceInDays");
}

