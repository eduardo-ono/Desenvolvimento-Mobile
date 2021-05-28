import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rotas_nomeadas/main.dart';

class HomePage extends StatelessWidget {
  // Atributos
  final String title;

  // Construtor
  HomePage({Key key, this.title}) : super(key: key);

  // Métodos
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            icon: Icon(Icons.ad_units),
            onPressed: () {
              Navigator.of(context).pushNamed(MyApp.TELA1);
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.of(context).pushNamed(MyApp.ABOUT);
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
