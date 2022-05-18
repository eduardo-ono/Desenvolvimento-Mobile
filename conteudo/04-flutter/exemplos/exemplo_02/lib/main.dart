/*
  Projeto "default" do Flutter
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Exemplo "default" do Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // Construtor
  MyHomePage({Key key, this.title}) : super(key: key);

  // Atributos
  final String title;

  // Métodos
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // O Column é um widget de layout. Ele recebe uma lista de "children" e
          // os arranja verticalmente. Por "default", ele se redimensiona para acomodar
          // seus "children" horizontalmanete, e tenta ser tão alto quanto o widget "pai".
          // MainAxisAlignment.center centraliza os widgets children verticalmente.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Olá!',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Você clicou no botão este número de vezes:',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
