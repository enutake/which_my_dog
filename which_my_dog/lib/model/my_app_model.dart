import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyAPPModel with ChangeNotifier {
  int currentQuestionCount = 1;
  List quizList = [];
  final maxImageLength = 10;

  void incrementQuestionCount() {
    currentQuestionCount++;
    notifyListeners();
  }
  void resetQuestionCount() {
    currentQuestionCount = 1;
    notifyListeners();
  }

  void generateQuizList() {
    for(var count = 0; count < 5; count++) {
      var rand1 = new math.Random();
      var rand2 = new math.Random();
      var randInt1 = rand1.nextInt(maxImageLength - 1) + 1;
      var randInt2 = rand2.nextInt(2);
      var imageType = randInt2 > 0 ? "aiken" : "inu";
      var fileName = imageType + randInt1.toString();
      quizList.add(fileName);
    }
  }
  void resetQuizList() {
    quizList = [];
  }
}