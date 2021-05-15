/*
  App para calcular o IMC de uma pessoa.

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
      title: "Aula de Flutter",
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
  List<Paciente> lista = [];
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;
  double _imc = 0.0;
  double _fontSize = 20.0;
  int _index = 0;
  String _display = "";

  final nomeController = TextEditingController();
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();

  // Construtor
  _MyHomePageState();

  // Métodos
  void _cadastrarPaciente() {
    _imc = 0.0;
    _nome = nomeController.text;
    _peso = double.parse(pesoController.text);
    _altura = double.parse(alturaController.text);
    if (_peso > 0 && _altura > 0) {
      var paciente = Paciente(_peso, _altura, _nome);
      _imc = paciente._imc;
      lista.add(paciente);
      _index = lista.length - 1;
      nomeController.text = "";
      pesoController.text = "";
      alturaController.text = "";
      _exibirRegistro(_index);
    }
  }

  void _exibirRegistro(int index) {
    if (index >= 0 && index < lista.length) {
      setState(() {
        _index = index;
        _nome = lista[index]._nome;
        _peso = lista[index]._peso;
        _imc = lista[index]._imc;
        _display = "Nome: $_nome \nPeso: ${_peso.toStringAsFixed(1)} \n"
            "Altura: ${_altura.toStringAsFixed(2)} \n"
            "IMC: ${_imc.toStringAsFixed(1)}";
      });
    } // if
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                "Dados do Paciente:",
                style: TextStyle(fontSize: _fontSize),
              ),
            ),
            // --- Nome do Paciente ---
            Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nome completo",
                  // hintText: "Nome do paciente",
                ),
                style: TextStyle(fontSize: _fontSize),
                controller: nomeController,
              ),
            ),
            // --- Peso do Paciente ---
            Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Peso (kg)",
                  // hintText: 'Peso do paciente (kg)',
                ),
                style: TextStyle(fontSize: _fontSize),
                controller: pesoController,
              ),
            ),
            // --- Altura do Paciente ---
            Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 20),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Altura (m)",
                  hintText: "Altura (m)",
                ),
                style: TextStyle(fontSize: _fontSize),
                controller: alturaController,
              ),
            ),
            // Saída
            ElevatedButton(
              child: Text(
                "Cadastrar Paciente",
                style: TextStyle(fontSize: _fontSize),
              ),
              onPressed: _cadastrarPaciente,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              color: Colors.yellow,
              child: Text(
                _display,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: _fontSize,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => _exibirRegistro(0),
            tooltip: 'Primeiro',
            child: Icon(Icons.first_page),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: FloatingActionButton(
              onPressed: () => _exibirRegistro(_index - 1),
              tooltip: 'Anterior',
              child: Icon(Icons.navigate_before),
            ),
          ),
          Text("${_index + 1} / ${lista.length}"),
          FloatingActionButton(
            onPressed: () => _exibirRegistro(_index + 1),
            tooltip: 'Próximo',
            child: Icon(Icons.navigate_next),
          ),
          FloatingActionButton(
            onPressed: () => _exibirRegistro(lista.length - 1),
            tooltip: 'Último',
            child: Icon(Icons.last_page),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class Paciente {
  // Atributos
  String _nome = "Indigente";
  double _peso;
  double _altura;
  double _imc = 0;

  Paciente(this._peso, this._altura, [this._nome]) {
    this._imc = 1.3 * _peso / pow(_altura, 2.5);
  }
}
