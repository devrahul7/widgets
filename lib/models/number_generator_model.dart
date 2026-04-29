import 'dart:math';

class NumberGeneratorModel {
  final Random _random = Random();

  int num1 = 0;
  int num2 = 0;

  int correct = 0;
  int incorrect = 0;
  int attempts = 0;

  bool gameOver = false;

  // Constructor
  NumberGeneratorModel() {
    generateNumbers();
  }

  void generateNumbers() {
    num1 = _random.nextInt(100) + 1;
    num2 = _random.nextInt(100) + 1;
    if (num1 == num2) generateNumbers(); // Avoid identical numbers
  }

  void checkAnswer(int selected) {
    if (gameOver) return;

    int correctAnswer = num1 > num2 ? num1 : num2;

    attempts++;

    if (selected == correctAnswer) {
      correct++;
    } else {
      incorrect++;
    }

    if (attempts >= 10) {
      gameOver = true;
    } else {
      generateNumbers();
    }
  }

  // Logic for the final message
  String getResultMessage() {
    if (correct > incorrect) {
      return "You Won!";
    } else if (incorrect > correct) {
      return "You Loose Game";
    } else {
      return "It's a Tie!";
    }
  }

  void restart() {
    correct = 0;
    incorrect = 0;
    attempts = 0;
    gameOver = false;
    generateNumbers();
  }
}