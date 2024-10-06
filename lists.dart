void main() {
  // var randomList = [50,75,20,99, "mario"]; //ok to use different data types at the beginning
  // var scores1 = [25,45,12,85];

  List<int> scores = [50, 75, 20, 99]; // can only have a list of integers

  print(scores[0]);

  scores.add(22);
  scores.remove(75);
  print(scores);
  scores.removeLast();
  print(scores);
  scores.shuffle();
  print(scores);
  var len = scores.length;
  print(len);
  print(scores.indexOf(99));
}
