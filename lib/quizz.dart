import 'package:flutter/material.dart';
import 'package:quizproject/acceuil.dart';

class Quizz extends StatefulWidget {
  @override
  _QuizzState createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  int score = 0;
  int currentQuestion = 0;

  final questions = [
    {
      'question': 'What is the color of the sky?',
      'answers': ['Blue', 'Green', 'Red'],
      'correctAnswer': 0,
    },
    {
      'question': 'how many month in the year?',
      'answers': ['12', '5', '10'],
      'correctAnswer': 0,
    },
    {
      'question': 'What is the capital of France?',
      'answers': ['Paris', 'London', 'Berlin'],
      'correctAnswer': 0,
    },
  ];

  void answerQuestion(int selectedAnswerIndex) {
    if (selectedAnswerIndex == questions[currentQuestion]['correctAnswer']) {
      score++;
    }
    setState(() {
      currentQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: currentQuestion < questions.length
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    questions[currentQuestion]['question'] as String,
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 20),
                  ...(questions[currentQuestion]['answers'] as List<String>)
                      .map((answer) {
                    return ElevatedButton(
                      onPressed: () => answerQuestion(
                        (questions[currentQuestion]['answers'] as List<String>)
                            .indexOf(answer),
                      ),
                      child: Text(answer),
                    );
                  }).toList(),
                ],
              )
            : Center(
                child: Text(
                  'Your score is: $score',
                  style: TextStyle(fontSize: 36),
                ),
              ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Accueil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Acceuil()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.quiz),
              title: Text('Quizz'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quizz()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
