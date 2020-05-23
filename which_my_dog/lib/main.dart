import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ja', 'JP'),
      ],
      title: 'Which My Dog',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/home': (context) => FirstPage(),
        '/quiz': (context) => QuizPage(),
        '/result': (context) => ResultPage(),
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

class CircleButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String route;
  CircleButton({this.icon, this.color, this.route});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey[300])),
        child: Icon(
          icon,
          color: color,
          size: 60,
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
    );
  }
}

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
