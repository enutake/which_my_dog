import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/circle_button.dart';
import '../model/my_app_model.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MyAPPModel>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Consumer<MyAPPModel>(builder: (context, model, _) {
                    return Text(
                      '${model.currentQuestionCount}/5',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    );
                  },
                )
              ),
            ),
            Image.asset(
              'images/inu1.jpg',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleButton(icon: Icons.clear, color: Colors.purple),
                CircleButton(icon: Icons.favorite, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


