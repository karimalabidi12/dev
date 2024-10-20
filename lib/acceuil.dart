import 'package:flutter/material.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 100),
          Text(
            "Welcome !",
            style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Colors.pink[200]),
          ),
          Image.asset('assets/img/login.jpg', width: 500, height: 250),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text('Get start'),
          )
        ],
      ),
    );
  }
}
