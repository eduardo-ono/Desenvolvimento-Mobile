import 'package:flutter/material.dart';
import 'package:rotas_nomeadas_menu/views/about.dart';
import 'package:rotas_nomeadas_menu/views/home_page.dart';
import 'package:rotas_nomeadas_menu/views/tela1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Atributos
  static const HOME = '/';
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
        HOME: (context) => HomePage(title: title), // '/' é a view inicial
        TELA1: (context) => Tela1(title: title),
        ABOUT: (context) => About(title: title),
      },
    );
  }
}
