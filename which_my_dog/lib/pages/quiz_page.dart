import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/circle_button.dart';
import '../model/my_app_model.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MyAPPModel>(context, listen: false);
    const quizMaxLength = 5;
    return Scaffold(
      body: Center(
        child: Consumer<MyAPPModel>(
          builder: (context, model, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '${model.currentQuestionCount}/$quizMaxLength',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300], width: 1.0),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    'images/${model.quizList[model.currentQuestionCount - 1]}.jpg',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleButton(icon: Icons.clear, color: Colors.purple),
                    CircleButton(icon: Icons.favorite, color: Colors.red),
                  ],
                ),
              ],
            );
          }
        )
      ),
    );
  }
}


