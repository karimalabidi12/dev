// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:quizz/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
/*import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var Pays = [
    {
      "Pays": "France",
      "capitale": 'Paris',
      "Population": '68 million',
      "Langue": 'Francais',
      "images": 'FRANCE.png',
    },
    {
      "Pays": "Tunisie",
      "capitale": 'Tunisia',
      "Population": '12 million',
      "Langue": 'Arab',
      "images": 'tunisie.png',
    },
    {
      "Pays": 'Maroc',
      "capitale": 'Rabat',
      "Population": '38 million',
      "Langue": 'Arab',
      "images": 'MAROC.JPG',
    },
    {
      "Pays": "USA",
      "capitale": 'Washington',
      "Population": '332 million',
      "Langue": 'Anglais',
      "images": 'USA.png',
    },
    {
      "Pays": "Brasil",
      "capitale": 'PaBrasilia',
      "Population": '214 million',
      "Langue": 'Portoguese',
      "images": 'BRASIL.png',
    },
  ];

  Map<String, String>? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(
                  context); // Naviguer vers la page précédente (intro page)
            },
          ),
        ],
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FloatingActionButton pressed");
          print(Pays[0]["pays"]);
        },
        child: Icon(Icons.cloud),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 24),
          Text(
            'Atlas Monde',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var pays in Pays)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCountry = pays;
                      });
                    },
                    child: Text(pays["Pays"]!),
                  ),
                ),
            ],
          ),
          if (selectedCountry != null) ...[
            CountryInfo(
                text: 'Capitale: ${selectedCountry!["capitale"]}',
                color: Colors.green),
            CountryInfo(
                text: 'Population: ${selectedCountry!["Population"]}',
                color: Colors.pink),
            CountryInfo(
                text: 'Langue: ${selectedCountry!["Langue"]}',
                color: Colors.orange),
            SizedBox(height: 8),
            Image.asset(
              'assets/images/${selectedCountry!["images"]}',
              height: 100,
            ),
          ],
        ],
      ),
    );
  }
}

class CountryInfo extends StatelessWidget {
  final String text;
  final Color color;

  CountryInfo({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 16),
      ),
    );
  }
}*/ 
/*import 'package:flutter/material.dart';
import 'package:testflutteraicha/home_page.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Titre "Atlas Monde"
              Text(
                'Atlas Monde',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 16), // Espace entre le titre et l'image
              // Image (fournie en annexe)
              Image.asset(
                'assets/images/monde.jpg', // Assurez-vous d'ajuster le chemin de votre image
                height: 200, // Hauteur de l'image (ajustez selon vos besoins)
              ),
              SizedBox(height: 16), // Espace entre l'image et le texte "Enter"
              // Texte "Enter" en tant que lien
              Text(
                'Enter',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  // Ajoutez un soulignement pour ressembler à un lien
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
/*import 'package:flutter/material.dart';
import 'package:testflutteraicha/intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IntroPage(), // Remplacez IntroPage par votre widget principal
      ),
    );
  }
}*/
/*import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}*/