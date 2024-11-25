import 'dart:io';

void fileHandling() {
  try {
    // Writing to a file
    File outputFile = File('output.txt');
    outputFile.writeAsStringSync("This is new content.\n");

    // Reading from a file
    File inputFile = File('input.txt');
    String content = inputFile.readAsStringSync();
    print("Content from file: $content");
  } catch (e) {
    print("An error occurred: $e");
  }
}

void main(){
  fileHandling();
}