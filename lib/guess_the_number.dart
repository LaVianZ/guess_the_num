
import 'dart:io';

import 'package:hello_flutter/testoo.dart';

void main(){
  var game = Game();
  GuessResult? result;
  do {
    String? input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      print("╟Only number pls◙◚◙");
      print("╚═════════════════════");
      continue;
    }
    result = game.checkAns(guess)!;
    if(result==GuessResult.correct){
      print('lucky guess ${game.totalGuess} time');
    }else if(result==GuessResult.tooHigh){
      print('too high guess for ${game.totalGuess} time');
    }else if(result==GuessResult.tooLow){
      print('too low guess for ${game.totalGuess} time');
    }

  }while(result != GuessResult.correct);

}