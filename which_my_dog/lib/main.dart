import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Which My Dog',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/quiz': (context) => QuizPage(),
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
                  "1/5",
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
                CircleButton(icon: Icons.clear, color: Colors.purple,),
                CircleButton(icon: Icons.favorite, color: Colors.red,),
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
  CircleButton({this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey[300])
        ),
        child: Icon(
          icon,
          color: color,
          size: 60,
        ),
      ),
      onTap: (){},
    );
  }
}