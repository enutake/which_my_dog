import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyAPPModel with ChangeNotifier {
  int currentQuestionCount = 1;
  List quizList = [];
  List answerList = [];
  int points = 0;
  var title;
  final int maxQuizLength = 5;
  final int maxImageLength = 10;
  final Map titles = {0: '逆にイヌスキー', 20: '嫌犬家', 40: 'イヌスキー', 60: 'イヌラバー', 80: '飼い主', 100: '犬公方'};
  final List imageTypes = ["aiken", "inu"];

  void incrementQuestionCount() {
    currentQuestionCount++;
    notifyListeners();
  }
  void resetQuestionCount() {
    currentQuestionCount = 1;
    notifyListeners();
  }

  void generateQuizList() {
    for(var count = 0; count < maxQuizLength; count++) {
      var rand1 = new math.Random();
      var rand2 = new math.Random();
      var randInt1 = rand1.nextInt(maxImageLength - 1) + 1;
      var randInt2 = rand2.nextInt(2);
      var imageType = imageTypes[randInt2];
      var fileName = imageType + randInt1.toString();
      quizList.add(fileName);
    }
  }
  void resetQuizList() {
    quizList = [];
  }

  void setAnswerList(bool isLike) {
    answerList.add(isLike);
  }
  void resetAnswerList() {
    answerList.clear();
  }

  void checkAnswer() {
    var answerConvertedList = answerList.map((answer) => answer == true ? "aiken" : "inu").toList();
    for(var checkcount = 0; checkcount < 5; checkcount++) {
      if(quizList[checkcount].startsWith(answerConvertedList[checkcount])) {
        points += 20;
      }
    }
    title = titles[points];
  }
  void resetPoint() {
    points = 0;
  }
}