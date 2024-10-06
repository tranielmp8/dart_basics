void main() {
  // print(greet("Mario", 33));

  // final greeting = greet("Luigi", 31);
  // print(greeting);

  // print(asl(39, "male", "TX"));

  final greeting = newGreet(age: 25, name: "Mario");
  var newGreeting = newGreet(age: 35); // didn't need name bc null is ok with ?
  print(greeting);
  print(newGreeting);
}

greet(String name, int age) {
  return "Hi, my name is $name and I am $age";
}

asl(int age, String sex, String location) {
  return "Hello I am $age years old. I am a $sex, and I am located in: $location";
}

// mark params as optional you need ? and to mark something as required, you put required

String newGreet({String? name, required int age}) {
  return "Hi, My new name is $name and I am now $age";
}
