import 'package:flutter/material.dart';

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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.tiktok),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                ' What is your favorite color ',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Bouton rose cliqué');
                },
                style: ElevatedButton.styleFrom(),
                child: Text('Button pink'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Bouton Vert cliqué');
                },
                style: ElevatedButton.styleFrom(),
                child: Text('Button green'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Bouton Bleu cliqué');
                },
                style: ElevatedButton.styleFrom(),
                child: Text('Button blue'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: null, child: Icon(Icons.alarm)),
      drawer: Drawer(
        child: Text(
          "Menu",
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}
