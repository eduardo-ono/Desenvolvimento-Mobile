import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  // Atributos
  final String title = 'Tela 1';

  // Construtor
  Tela1({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title)),
    );
  }
}
