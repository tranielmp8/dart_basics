void main() {
  var name = "mario"; // starts as a string will stay as a string
  final age = 25; // cannot change at all
  const isOpen =
      true; // set in stone and use const instead of final if we know what the value will be before running code. Use final if we don't know ending result at the beginning

  //string
  String lastName = "Pride";
  print(name);
  print(lastName);
  //string Pinterpolation
  print("My name is: " + name);
  print("My name is: $name and my age is $age");
  print(age);
  print(age - 10);
  print(age * 10);
  print(isOpen);

  bool isClosed = false;
  int num = 2;
  // double newNum = 3.5;

  // int point; //before being used it has to receive a value so it cannot be nullable
  int? points; // this is fine as being null bc we put the question mark

  print(isClosed);
  print(num);
  // print(point); // <-- null value not allowed. no ? or no value
  print(points); // <- null is allowed here
}
