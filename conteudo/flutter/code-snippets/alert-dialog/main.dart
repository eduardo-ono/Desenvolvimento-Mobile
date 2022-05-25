/*
 * Programa que exibe uma caixa de diálogo do tipo AlertDialog.
 * Estilo "antigo" de formatação de código.
 */

import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // Atributos
  final String _title = "AlertDialog"; // "final" pois é uma classe "Stateless"
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // Métodos
  void _exibirDialogo(BuildContext context) {
    // Cria um objeto "botão OK"
    var flatButton = FlatButton(
      child: Text("OK"),
      onPressed: () => Navigator.of(context).pop(),
    );
    // Cria o conteúdo de uma caixa de diálogo do tipo AlertDialog
    var alertDialog = AlertDialog(
      title: Text("Título da Caixa de Diálogo"),
      content: Text("Mensagem"),
      // Define o conjunto de botões na base da caixa de diálogo
      actions: <Widget>[flatButton],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog,
    );
  } // _exibirDialogo()

  @override
  Widget build(BuildContext context) {
    // Cria um botão do tipo RaisedButton
    var raisedButton = RaisedButton(
      child: Text("Clique aqui", style: TextStyle(fontSize: 18)),
      onPressed: () => _exibirDialogo(context),
    );
    // Cria um objeto do tipo Scaffold
    var scaffold = Scaffold(
      appBar: AppBar(title: Text("AlertDialog")),
      body: Center(child: raisedButton),
    );
    return scaffold;
  }
}
