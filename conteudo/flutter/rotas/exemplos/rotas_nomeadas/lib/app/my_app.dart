import 'package:flutter/material.dart';
import 'package:rotas_nomeadas/app/view/formulario_cadastro.dart';
import './view/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const HOME = '/';
  static const FORMULARIO_CADASTRO = 'formulario_cadastro';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HOME: (context) => const MyHomePage(title: 'Lista de Contatos'),
        FORMULARIO_CADASTRO: (context) => const FormularioCadastro(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
