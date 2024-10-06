void main() {
  List<int> scores = [50, 70, 22, 99, 100, 30];

  // for (int i = 0; i < 5; i++) {
  //   print("The current value of i is $i");
  // }

  // for (int score in scores) {
  //   print("Current score is $score");
  // }

  // for (int score in scores) {
  //   if (score > 55) {
  //     print("Current score is $score");
  //   } else if (score < 55 && score > 25) {
  //     print("Score is greater than 25, but less than 55");
  //   } else {
  //     print("score not high enough");
  //   }
  // }

// where is like the filter() in javascript
  for (int score in scores.where((s) => s == 99)) {
    print("The score is $score");
  }
}
