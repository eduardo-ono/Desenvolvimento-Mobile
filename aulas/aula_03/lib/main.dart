/*
  App para calcular o IMC de uma pessoa através da fórmula:

  IMC = 1.3 x peso / altura ^ 2.5 

  Referências:

  - [Programador BR] https://www.youtube.com/watch?v=hOsSDTxzrKQ
*/

import 'package:flutter/material.dart';
import 'dart:math'; // pow()

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: "Calculadora de IMC"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // Fields in a Widget subclass are always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Atributos
  double _peso = 0.0;
  double _altura = 0.0;
  double _imc = 0.0;
  double _fontSize = 20.0;

  void _calcularIMC() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      if (_peso > 0 && _altura > 0) {
        _imc = 1.3 * _peso / pow(_altura, 2.5);
      } else {
        _imc = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text(
                "Dados do Paciente:",
                style: TextStyle(fontSize: _fontSize),
              ),
            ),
            // Nome do Paciente
            TextField(
              decoration: InputDecoration(
                // border: InputBorder.none,
                hintText: "Nome do paciente",
              ),
              style: TextStyle(fontSize: _fontSize),
            ),
            // Peso do Paciente
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                // border: InputBorder.none,
                hintText: 'Peso do paciente (kg)',
              ),
              style: TextStyle(fontSize: _fontSize),
              onChanged: (text) {
                _peso = double.parse(text);
              },
            ),
            // Altura do Paciente
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                // border: InputBorder.none,
                hintText: "Altura do paciente (m)",
              ),
              style: TextStyle(fontSize: _fontSize),
              onChanged: (text) {
                _altura = double.parse(text);
              },
            ),
            // IMC
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
              padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
              color: Colors.blueGrey,
              child: Text(
                "IMC = ${_imc.toStringAsFixed(1)}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: _fontSize,
                ),
              ),
            ),
            RaisedButton(
              child: Text(
                "Calcular IMC",
                style: TextStyle(fontSize: _fontSize),
              ),
              onPressed: _calcularIMC,
            )
          ],
        ),
      ),
    );
  }
}
