import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/my_app_model.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MyAPPModel>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '愛犬どっち？',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'images/inu_silhouette.png',
              width: 300,
              height: 300,
            ),
            SizedBox(
              width: 300,
              height: 80,
              child: RaisedButton(
                child: Text(
                  "スタート",
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  model.generateQuizList();
                  Navigator.of(context).pushNamed('/quiz');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}