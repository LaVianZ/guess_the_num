import 'dart:io';
import 'dart:math';

void main(){
  var r = Random();
  var ans = r.nextInt(100)+1;
  var isCorrect = false;
  int? guess;
  int i=0;
  do {
    print("╔═════════════════════");
    stdout.write("║Guess number 1-100 :");
    String? input = stdin.readLineSync();
    guess = int.tryParse(input!);
    if (guess == null) {
      print("╟Only number pls◙◚◙");
      print("╚═════════════════════");
      continue;
    }
    isCorrect = checkAns(guess, ans, i)!;
    i++;
  }while(!isCorrect);

}
bool? checkAns(int g,int an,int j){
  if (g == an) {
    if(j<=5) print("╟So lucky❤ you guess only ${j+1} times!");
    if(j>5) print("╟Correct yeah! you guess ${j+1} times!");
    print("╚═════════════════════");
    return true;
  }
  if (g > an) {
    print("╟➜ $g is too High!");
    print("╚═════════════════════");
    return false;
  }
  if (g < an) {
    print("╟➜ $g is too Low!");
    print("╚═════════════════════");
    return false;
  }

}