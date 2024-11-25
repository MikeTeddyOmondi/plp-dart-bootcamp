void collections() {
  // List
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  fruits.add("Date");
  fruits.remove("Banana");
  print("Fruits List: $fruits");
  fruits.forEach((fruit) => print("Fruit: $fruit"));

  // Set
  Set<int> numbers = {1, 2, 3, 3, 4};
  numbers.add(5);
  numbers.remove(2);
  print("Numbers Set: $numbers");
  numbers.forEach((number) => print("Number: $number"));

  // Map
  Map<String, int> ages = {"Alice": 25, "Bob": 30};
  ages["Charlie"] = 35;
  ages.remove("Alice");
  print("Ages Map: $ages");
  ages.forEach((key, value) => print("$key is $value years old"));
}

void main(){
  collections();
}