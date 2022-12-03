import 'package:clinica/views/cadastro.dart';
import 'package:flutter/material.dart';
import 'models/paciente.dart';
import './views/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const HOME = '/';
  static const CADASTRO = 'cadastro';

  static List<Paciente> lista = [];

  @override
  Widget build(BuildContext context) {
    var paciente = Paciente(nome: 'Fulano de Tal', peso: 79, altura: 1.74);
    lista.add(paciente);
    paciente = Paciente(nome: 'Ciclano de Tal', peso: 68, altura: 1.65);
    lista.add(paciente);
    paciente = Paciente(nome: 'Beltrano de Tal', peso: 73, altura: 1.78);
    lista.add(paciente);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HOME: (context) => MyHomePage(title: 'Clínica', lista: lista),
        CADASTRO: (context) => Cadastro(lista: lista),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
