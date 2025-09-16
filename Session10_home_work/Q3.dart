// Q3
//  Create a class Grade with a private field _score.- The setter should only accept values 0–100, otherwise print 'Invalid score'.- Add a getter and a computed getter isPass that returns true if score ≥ 50.- In main(), demonstrate updating the score multiple times and printing results

void main() {
  Grade test = Grade(50);
  print(test.score);
  print(test.isPass);
  test.score = 40;
  print(test.isPass);
  test.score = 101;
  print(test.score);
}

class Grade {
  double _score;
  Grade(this._score);

  set score(double score) {
    if (score >= 0 && score <= 100) {
      this._score = score;
    } else {
      print('Invalid Score.');
    }
  }

  double get score => this._score;

  bool get isPass => this._score >= 50;
}
