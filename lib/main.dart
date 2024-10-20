import 'package:flutter/material.dart';
import 'package:quizproject/acceuil.dart';
import 'package:quizproject/quizz.dart';

void main() {
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      // home: Acceuil(),
      initialRoute: '/acceuil',
      routes: {
        '/acceuil': (context) => Acceuil(),
        '/quizz': (context) => Quizz(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
