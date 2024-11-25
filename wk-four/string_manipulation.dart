void stringManipulation() {
  String str1 = "Hello";
  String str2 = "World";

  // Concatenation
  String concatenated = str1 + " " + str2;
  print("Concatenated: $concatenated");

  // Interpolation
  String interpolated = "$str1, Dart is amazing!";
  print("Interpolated: $interpolated");

  // Substring extraction
  String substring = str1.substring(1, 4);
  print("Substring: $substring");

  // Case conversion
  print("Uppercase: ${str1.toUpperCase()}");
  print("Lowercase: ${str2.toLowerCase()}");

  // Reverse string
  String reversed = str1.split('').reversed.join('');
  print("Reversed: $reversed");

  // String length
  print("Length: ${str1.length}");
}

void main(){
  stringManipulation();
}