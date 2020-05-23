import 'package:flutter/material.dart';

import '../widgets/circle_button.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int correctNum = 1;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "$correctNum/5",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Image.asset(
              'images/inu1.jpg',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleButton(
                    icon: Icons.clear, color: Colors.purple, route: "/home"),
                CircleButton(
                    icon: Icons.favorite, color: Colors.red, route: "/result"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


