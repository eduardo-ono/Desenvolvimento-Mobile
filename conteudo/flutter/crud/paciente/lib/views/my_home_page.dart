import 'package:flutter/material.dart';
import '../models/paciente.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Atributos
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Atributos
  List<Paciente> lista = [];

  // Construtor
  _MyHomePageState() {
    var paciente = Paciente(nome: 'Fulano de Tal', peso: 79, altura: 1.74);
    lista.add(paciente);
    paciente = Paciente(nome: 'Ciclano de Tal', peso: 68, altura: 1.65);
    lista.add(paciente);
    paciente = Paciente(nome: 'Beltrano de Tal', peso: 73, altura: 1.78);
    lista.add(paciente);
  }

  // Métodos

  @override
  Widget build(BuildContext context) {
    // Função "interna" que seleciona o ícone.
    Widget selecionarIcon(Paciente paciente) {
      if (paciente.imc < 18.5 || paciente.imc > 25.0) {
        return const Icon(Icons.sick);
      }
      return const Icon(Icons.person);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: selecionarIcon(lista[index]),
              title: Text(
                lista[index].nome,
                style: const TextStyle(fontSize: 18.0),
              ),
              onTap: () => _exibirPaciente(context, lista[index]),
            );
          }),
    );
  }

  // Exibe os dados do paciente em uma caixa de diálogo.
  void _exibirPaciente(BuildContext context, Paciente paciente) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(paciente.nome),
          content: Column(
            children: [
              Text('Peso (kg): ${paciente.peso.toStringAsFixed(1)}'),
              Text('Altura (m): ${paciente.altura}'),
              Text('IMC: ${paciente.imc.toStringAsFixed(1)}'),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
