import 'package:flutter/material.dart';
import 'views/about.dart';
import 'views/home_page.dart';
import 'views/tela1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Atributos
  // static const HOME = '/';
  static const TELA1 = 'TELA1';
  static const ABOUT = 'ABOUT';

  final String title = 'Exemplo - Rotas Nomeadas';

  // Métodos
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => HomePage(title: title), // '/' é a view (tela) inicial
        TELA1: (context) => Tela1(),
        ABOUT: (context) => About(title: title),
      },
    );
  }
}
