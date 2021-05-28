import 'package:flutter/material.dart';

class About extends StatelessWidget {
  // Atributos
  final String title;

  // Construtor
  About({Key key, this.title}) : super(key: key);

  // Métodos
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 15)),
            Text('About'),
          ],
        ),
      ),
      body: Center(
        child: Text('About'),
      ),
    );
  }
}
