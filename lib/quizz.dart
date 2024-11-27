import 'package:flutter/material.dart';
import 'package:quizz/home.dart';

class Quizz extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<Quizz> {
  int score = 0;
  int question_index = 0;

  final questions = [
    {
      'question': 'What is the color of the sky?',
      'answers': [
        {'text': 'Blue', 'score': 1},
        {'text': 'Green', 'score': 0},
        {'text': 'Red', 'score': 0},
      ],
    },
    {
      'question': 'How many months are in a year?',
      'answers': [
        {'text': '12', 'score': 1},
        {'text': '5', 'score': 0},
        {'text': '10', 'score': 0},
      ],
    },
    {
      'question': 'What is the capital of France?',
      'answers': [
        {'text': 'Paris', 'score': 1},
        {'text': 'London', 'score': 0},
        {'text': 'Berlin', 'score': 0},
      ],
    },
  ];

  void nextQuestion(int answerScore) {
    setState(() {
      score += answerScore;
      question_index++;
    });
  }

  void resetQuiz() {
    setState(() {
      question_index = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.quiz),
              title: const Text('Quiz'),
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
      body: question_index < questions.length
          ? Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    questions[question_index]['question'].toString(),
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 20),
                  ...(questions[question_index]['answers']
                          as List<Map<String, Object>>)
                      .map((answer) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                        ),
                        onPressed: () => nextQuestion(answer['score'] as int),
                        child: Text(answer['text'].toString()),
                      ),
                    );
                  }).toList(),
                ],
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your score is: $score',
                    style: TextStyle(fontSize: 36),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: resetQuiz,
                    child: Text('Restart Quiz'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Text('Go to Home'),
                  ),
                ],
              ),
            ),
    );
  }
}
