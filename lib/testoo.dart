import 'dart:math';
enum GuessResult{
  correct,tooHigh,tooLow;
}

class Game {
  final int answer = Random().nextInt(100) + 1;
  int _totalGuess = 0;

  //constructor
  Game() {
    print('answer is $answer');
  }

  GuessResult? checkAns(int guess) {
    _totalGuess++;


    if (guess == answer) {
      return GuessResult.correct;
    }
    if (guess > answer) {
      return GuessResult.tooHigh;
    }
    if (guess < answer) {
      return GuessResult.tooLow;
    }
  }

  int get totalGuess {
    return _totalGuess;
  }
}
