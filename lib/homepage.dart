import 'package:flutter/material.dart';
import 'package:quizproject/acceuil.dart';
import 'package:quizproject/quizz.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('My quizz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                'What is your favorite color?',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(
                  height: 20), // Espace entre la question et le premier bouton
              ElevatedButton(
                onPressed: () {
                  print('Bouton rose cliqué');
                },
                child: Text('Button pink'),
              ),
              SizedBox(height: 10), // Espace entre les boutons
              ElevatedButton(
                onPressed: () {
                  print('Bouton Vert cliqué');
                },
                child: Text('Button green'),
              ),
              SizedBox(height: 10), // Espace entre les boutons
              ElevatedButton(
                onPressed: () {
                  print('Bouton Bleu cliqué');
                },
                child: Text('Button blue'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: null, child: Icon(Icons.alarm)),
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
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
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
