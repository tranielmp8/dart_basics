// Sets don't allow duplicates

void main() {
// Set of names
  var someNames = {"Naruto", "Kakashi", "Roc Lee"};

  Set<String> names = {"mario", "luigi", "peach"};
  // Set<String> names = {"mario", "luigi", "peach", "luigi"}; <-- cannot have duplicates will still run though

  someNames.add("Sakura");
  print(someNames);
  names.add("peach"); // <-- will not be added bc it is a duplicate
  print(names);
}
