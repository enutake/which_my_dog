import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/my_app_model.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MyAPPModel>(context, listen: false);
    int correctNum = 1;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "結果発表",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "80",
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        textBaseline: TextBaseline.alphabetic),
                    strutStyle: StrutStyle(fontSize: 80, height: 2.0),
                  ),
                  Text(
                    "点！",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    strutStyle: StrutStyle(fontSize: 80, height: 2.0),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "称号",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  strutStyle: StrutStyle(
                      fontSize: 50,
                      height: 1.5
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "愛犬家",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    strutStyle: StrutStyle(
                        fontSize: 50,
                        height: 1.5
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: SizedBox(
                width: 300,
                height: 80,
                child: RaisedButton(
                  child: Text(
                    "トップに戻る",
                    style: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {
                    model.resetQuestionCount();
                    Navigator.of(context).pushNamed('/home');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
