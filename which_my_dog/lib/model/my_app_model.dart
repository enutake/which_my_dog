import 'package:flutter/material.dart';

class MyAPPModel with ChangeNotifier {
  int currentQuestionCount = 1;

  void incrementQuestionCount() {
    currentQuestionCount++;
    notifyListeners();
  }
  void resetQuestionCount() {
    currentQuestionCount = 1;
    notifyListeners();
  }
}