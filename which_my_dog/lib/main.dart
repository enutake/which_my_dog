import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'pages/first_page.dart';
import 'pages/quiz_page.dart';
import 'pages/result_page.dart';
import 'model/my_app_model.dart';

void main() {
  runApp(
      ChangeNotifierProvider<MyAPPModel>(
        create: (_) => MyAPPModel(),
        child: MyApp()
      )
  );
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

