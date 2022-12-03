import 'package:flutter/material.dart';
import '../main.dart';
import '../models/paciente.dart';
import 'nav_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, this.title = 'MyApp', required this.lista});

  // Atributos
  final String title;
  final List<Paciente> lista;

  @override
  State<MyHomePage> createState() => _MyHomePageState(lista);
}

class _MyHomePageState extends State<MyHomePage> {
  // Construtor
  _MyHomePageState(this.lista);

  // Atributos
  final List<Paciente> lista;

  // Métodos
  @override
  Widget build(BuildContext context) {
    // Função "interna" que seleciona o ícone.
    Widget selecionarIcon(Paciente paciente) {
      return (paciente.imc < 18.5 || paciente.imc > 25.0)
          ? const Icon(Icons.sick)
          : const Icon(Icons.person);
    }

    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(MyApp.CADASTRO);
            },
          ),
        ],
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
              trailing: FittedBox(
                fit: BoxFit.fill,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.edit,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.remove,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              onTap: () => _exibirPaciente(context, lista[index]),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {}),
        tooltip: 'Atualizar',
        child: const Icon(Icons.update),
      ),
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
