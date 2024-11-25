// import 'package:combined_app/combined_app.dart' as combined_app;

import 'dart:io';
import 'package:intl/intl.dart';

void main(List<String> arguments) {
  List<Map<String, dynamic>> logEntries = [];

  // User input
  stdout.write("Enter a string: ");
  String userInput = stdin.readLineSync() ?? "";

  // String manipulation
  String reversed = userInput.split('').reversed.join('');
  int length = userInput.length;

  print("Reversed: $reversed");
  print("Length: $length");

  // Date and Time logging
  String timestamp = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  logEntries.add({
    "input": userInput,
    "reversed": reversed,
    "length": length,
    "timestamp": timestamp
  });

  // Save to file
  File logFile = File('log.txt');
  logFile.writeAsStringSync(
    logEntries.map((entry) => entry.toString()).join('\n'),
    mode: FileMode.append,
  );

  print("Data logged successfully.");
}
