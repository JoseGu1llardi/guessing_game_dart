import 'dart:io';
import 'dart:math';

void main() {
  print("========== Welcome to Guessing Game! ==========");

  int randomNumber = Random().nextInt(100) + 1;
  int? input;

  while (true) {
    stdout.write("Enter a number: ");
    String? line = stdin.readLineSync();
    input = int.tryParse(line ?? '');

    if (input == null) {
      print("Please enter a valid number.");
      continue; // ask again
    }

    if (input < randomNumber) {
      print("Too low! Try again.");
    } else if (input > randomNumber) {
      print("Too high! Try again.");
    } else {
      print(
        "Congratulations you are GAY! You've guessed the number $randomNumber!",
      );
      break;
    }
  }
}
