import 'package:flutter/material.dart';
import 'package:quizproject/acceuil.dart';

class Quizz extends StatefulWidget {
  @override
  _QuizzState createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  int score = 0; // Stocke le score
  int currentQuestion = 0; // Suivi de la question actuelle

  // Liste des questions et réponses
  final questions = [
    {
      'question': 'What is the color of the sky?',
      'answers': ['Blue', 'Green', 'Red'],
      'correctAnswer': 0, // L'index de la réponse correcte
    },
    {
      'question': 'What is 2 + 2?',
      'answers': ['4', '5', '3'],
      'correctAnswer': 0,
    },
    {
      'question': 'What is the capital of France?',
      'answers': ['Paris', 'London', 'Berlin'],
      'correctAnswer': 0,
    },
  ];

  // Fonction qui vérifie la réponse et met à jour le score
  void answerQuestion(int selectedAnswerIndex) {
    if (selectedAnswerIndex == questions[currentQuestion]['correctAnswer']) {
      score++;
    }
    setState(() {
      currentQuestion++; // Passer à la question suivante
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
                  // Boucle pour afficher les boutons de réponses
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
      // Drawer avec deux liens : Accueil et Quizz
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
