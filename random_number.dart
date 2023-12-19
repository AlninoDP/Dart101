import 'dart:math';

void main() {
  Random random = new Random();

  // List randomNumber = List.generate(10, (index) => random.nextInt(10));
  // print(randomNumber);

  int getRandomDice = random.nextInt(6) + 1; // random number from 1 - 6
  print(getRandomDice);
}
