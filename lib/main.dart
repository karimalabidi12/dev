import 'package:flutter/material.dart';
import 'package:quizproject/acceuil.dart';
import 'package:quizproject/homepage.dart';

void main() {
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      // home: Homepage(),
      // home: Acceuil(),
      initialRoute: '/acceuil',
      routes: {
        '/acceuil': (context) => Acceuil(),
        '/home': (context) => Homepage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
