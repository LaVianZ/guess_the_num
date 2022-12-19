import 'dart:io';

import 'package:hello_flutter/testoo.dart';

void main() {
  var maxrandom = 0;
  var difficulty;
  var continus;
  var gameCount = 0;
  var scorePerGame = <int>[];
  print("╔═════════════════════════════════════════╗");
  print("║         GUESS THE NUMBER GAME!!         ║");
  print("╚═════════════════════════════════════════╝");
  do {
    do {
      stdout.write("║select difficulty(easy,medium,hard) :");
      String input = stdin.readLineSync()!.toUpperCase();
      if (input == 'EASY' || input == 'MEDIUM' || input == 'HARD') {
        difficulty = input;
      } else {}
      if (difficulty == 'EASY') {
        maxrandom = 100;
      } else if (difficulty == 'MEDIUM') {
        maxrandom = 1000;
      } else if (difficulty == 'HARD') {
        maxrandom = 10000;
      }
    } while (difficulty == null);

    var game = Game(maxrandom);
    GuessResult? result;
    do {
      stdout.write("║Guess number :");
      String? input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null) {
        print("║Only number pls");

        continue;
      }
      result = game.checkAns(guess)!;
      if (result == GuessResult.correct) {
        print('║YOU WIN!!!');
      } else if (result == GuessResult.tooHigh) {
        print('║$guess is too high');
      } else if (result == GuessResult.tooLow) {
        print('║$guess is too low');
      }
    } while (result != GuessResult.correct);
    //[y,n]
    do {
      stdout.write("║play again?(y,n):");
      String input = stdin.readLineSync()!.toUpperCase();
      if (input == 'Y' || input == 'N') {
        continus = input;
      }
    } while (continus == null);
    gameCount++;
    scorePerGame.add(game.totalGuess);
  } while (continus == 'Y');
  print("╚══════════════════════════════════════════");

  print('║you have play $gameCount game.║');
  for (var i = 0; i < scorePerGame.length; i++) {
    print('║--game[${i + 1}] guess ${scorePerGame[i]} time.║');
  }
}
