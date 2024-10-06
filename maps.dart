void main() {
  print("Maps");
  // Key:Value pairs
  // var planets = {
  //   "first": "mercury" //infer
  // };

  // var planets = {
  //   1: "mercury", // inferred int : string
  // };

  Map<String, String> planets = {
    "first": "mercury",
    "second": "venus",
    "third": "earth",
    "fourth": "mars",
    "fifth": "jupiter",
  };

  print(planets["second"]);
  print(planets["first"]);

  planets["third"] = "Earth";
  print(planets["third"]);
  print(planets);

  planets["sixth"] = "uranus";
  print(planets["sixth"]);

  print(planets.containsKey("third"));
  print(planets.containsKey("seventh"));
  print(planets.containsValue("Earth"));
  print(planets.containsValue("cool"));

  print(planets.remove("third"));
  print(planets);
}
