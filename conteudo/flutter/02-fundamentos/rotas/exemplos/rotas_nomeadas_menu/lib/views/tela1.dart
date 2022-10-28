import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  // Atributos
  final String title;

  // Construtor
  Tela1({Key key, this.title}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('Tela 1')),
    );
  }
}
