import 'package:flutter/material.dart';
import '../models/paciente.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({
    super.key,
    required this.lista,
  });

  final List<Paciente> lista;

  @override
  State<Cadastro> createState() => _CadastroState(lista);
}

class _CadastroState extends State<Cadastro> {
  _CadastroState(this.lista);

  final List<Paciente> lista;
  String _nome = '';
  double _peso = 0;
  double _altura = 0;
  final nomeController = TextEditingController();
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();
  final imcController = TextEditingController();
  final double _fontSize = 18.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastrar Paciente (???)"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                "Dados do Paciente:",
                style: TextStyle(fontSize: _fontSize),
              ),
            ),
            // --- Nome do Paciente ---
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                decoration: const InputDecoration(
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
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
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
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Altura (m)",
                  hintText: "Altura (m)",
                ),
                style: TextStyle(fontSize: _fontSize),
                controller: alturaController,
              ),
            ),
            // --- IMC (desabilitado) ---
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
              child: TextField(
                enabled: false,
                // keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "IMC",
                  hintText: "IMC",
                ),
                style: TextStyle(fontSize: _fontSize),
                controller: imcController,
              ),
            ),
            // Saída
            ElevatedButton(
              onPressed: _cadastrarPaciente,
              child: Text(
                "Cadastrar Paciente",
                style: TextStyle(fontSize: _fontSize),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Métodos
  void _cadastrarPaciente() {
    _nome = nomeController.text;
    _peso = double.parse(pesoController.text);
    _altura = double.parse(alturaController.text);
    if (_peso > 0 && _altura > 0) {
      var paciente = Paciente(nome: _nome, peso: _peso, altura: _altura);
      lista.add(paciente);
      // _index = lista.length - 1;
      nomeController.text = '';
      pesoController.text = '';
      alturaController.text = '';
      imcController.text = paciente.imc.toStringAsFixed(1);
    }
  }
}
