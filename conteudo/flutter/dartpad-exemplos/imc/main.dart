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
      title: "Calculadora de IMC",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "Calculadora de IMC"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // Construtor "antigo"
  // MyHomePage({Key? key, this.title}) : super(key: key);

  MyHomePage({super.key, this.title = ''});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Atributos
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;
  double _imc = 0.0;

  final nomeController = TextEditingController();
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();

  // Construtor
  _MyHomePageState();

  // Métodos
  void _calcularImc() {
    _imc = 0.0;
    _nome = nomeController.text;
    _peso = double.parse(pesoController.text);
    _altura = double.parse(alturaController.text);
    if (_peso > 0 && _altura > 0) {
      _imc = _peso / pow(_altura, 2);
      nomeController.text = "";
      pesoController.text = "";
      alturaController.text = "";
      setState(() {});
    }
  } // _calcularImc()

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
                style: textFieldTextStyle(),
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
                style: textFieldTextStyle(),
                controller: nomeController,
              ),
            ),
            // --- Peso do Paciente ---
            Padding(
              padding: EdgeInsets.all(5),
              child: textField("Peso (kg)", pesoController),
            ),
            // --- Altura do Paciente ---
            Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 20),
              child: textField("Altura (m)", alturaController),
            ),
            // Saída
            Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 20),
              child: Text("${_imc.toStringAsFixed(1)}"),
            ),
            ElevatedButton(
              child: Text(
                "Calcular IMC",
                style: textFieldTextStyle(),
              ),
              onPressed: _calcularImc,
            ),
          ],
        ),
      ),
    );
  }

  TextStyle textFieldTextStyle() {
    return TextStyle(fontSize: 20.0);
  }

  Widget textField(String texto, TextEditingController controller) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: texto,
        hintText: texto,
      ),
      style: textFieldTextStyle(),
      controller: controller,
    );
  }
}
