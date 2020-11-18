/*
  App para calcular o IMC de uma pessoa.

  Referências:

  - [Programador BR] https://www.youtube.com/watch?v=hOsSDTxzrKQ
*/

import 'package:flutter/material.dart';
import 'dart:math'; // pow()

class Paciente {
  // Atributos
  String _nome;
  double _peso;
  double _altura;
  double _imc = 0;

  Paciente(this._peso, this._altura, [this._nome]) {
    this._imc = 1.3 * _peso / pow(_altura, 2.5);
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Paciente> lista = [];

  // Construtor
  MyApp() {
    Paciente exemplo = Paciente(68.0, 1.70, "Fulano de Tal");
    lista.add(exemplo);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aula de Flutter",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(lista),
    );
  }
}

class HomePage extends StatefulWidget {
  final List<Paciente> lista;

  // Construtor
  HomePage(this.lista);

  @override
  _HomePageState createState() => _HomePageState(lista);
}

class _HomePageState extends State<HomePage> {
  final List<Paciente> lista;

  // Construtor
  _HomePageState(this.lista);

  // Métodos
  void _atualizarTela() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold(
      drawer: NavDrawer(lista),
      appBar: AppBar(
        title: Text("Pacientes (${lista.length})"),
      ),
      body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("${lista[index]._nome}"),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _atualizarTela,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma ma
    );
  }
}

class NavDrawer extends StatelessWidget {
  final List lista;

  // Construtor
  NavDrawer(this.lista);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Opcional
          DrawerHeader(
            child: Text(
              "Menu",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(color: Colors.blueGrey),
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text("Informações do Paciente"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TelaInformacoesDoPaciente(lista)),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person_search),
            title: Text("Busca por Paciente"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TelaBuscarPorPaciente()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_sharp),
            title: Text("Cadastrar Paciente"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TelaCadastrarPaciente(lista)),
              );
            },
          ),
          Container(
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: ListTile(
              leading: Icon(Icons.person_search),
              title: Text("Sobre"),
              onTap: () => {},
            ),
          ),
        ],
      ),
    );
  }
}

//-----------------------------------------------------------------------------
// Tela: Informações do Paciente
//-----------------------------------------------------------------------------

class TelaInformacoesDoPaciente extends StatefulWidget {
  final List<Paciente> lista;

  // Construtor
  TelaInformacoesDoPaciente(this.lista);

  @override
  _TelaInformacoesDoPaciente createState() => _TelaInformacoesDoPaciente(lista);
}

class _TelaInformacoesDoPaciente extends State<TelaInformacoesDoPaciente> {
  // Atributos
  final List lista;
  Paciente paciente;
  int index = -1;

  // Construtor
  _TelaInformacoesDoPaciente(this.lista) {
    if (lista.length > 0) {
      index = 0;
      paciente = lista[0];
    }
  }

  void _exibirRegistro(index) {
    if (index >= 0 && index < lista.length) {
      paciente = lista[index];
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    var titulo = "Informações do Paciente";
    if (paciente == null) {
      return Scaffold(
        appBar: AppBar(title: Text(titulo)),
        body: Column(
          children: <Widget>[
            Text("Nenhum paciente encontrado!"),
            Container(
              color: Colors.blueGrey,
              child: BackButton(),
            ),
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(paciente._nome),
            Text("${paciente._peso}"),
            Text("${paciente._altura}"),
            Text("${paciente._imc}"),
            Row(
              children: <FloatingActionButton>[
                FloatingActionButton(
                  heroTag: null,
                  onPressed: () => _exibirRegistro(0),
                  tooltip: 'Primeiro',
                  child: Icon(Icons.first_page),
                ),
                FloatingActionButton(
                  heroTag: null,
                  onPressed: () => _exibirRegistro(0),
                  tooltip: 'Primeiro',
                  child: Icon(Icons.navigate_before),
                ),
                FloatingActionButton(
                  heroTag: null,
                  onPressed: () => _exibirRegistro(0),
                  tooltip: 'Primeiro',
                  child: Icon(Icons.navigate_next),
                ),
                FloatingActionButton(onPressed: null),
                FloatingActionButton(
                  heroTag: null,
                  onPressed: () => _exibirRegistro(0),
                  tooltip: 'Primeiro',
                  child: Icon(Icons.last_page),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------------------------------------------
// Tela: Buscar por Paciente
// ----------------------------------------------------------------------------

class TelaBuscarPorPaciente extends StatefulWidget {
  @override
  _TelaBuscarPorPacienteState createState() => _TelaBuscarPorPacienteState();
}

class _TelaBuscarPorPacienteState extends State<TelaBuscarPorPaciente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

//-----------------------------------------------------------------------------
// Tela: Cadastrar Paciente
// ----------------------------------------------------------------------------

class TelaCadastrarPaciente extends StatefulWidget {
  final List<Paciente> lista;

  // Construtor
  TelaCadastrarPaciente(this.lista);

  @override
  _TelaCadastrarPacienteState createState() =>
      _TelaCadastrarPacienteState(lista);
}

class _TelaCadastrarPacienteState extends State<TelaCadastrarPaciente> {
  // Atributos
  final List<Paciente> lista;
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;
  double _fontSize = 20.0;
  final nomeController = TextEditingController();
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();
  final imcController = TextEditingController();

  // Construtor
  _TelaCadastrarPacienteState(this.lista);

  // Métodos
  void _cadastrarPaciente() {
    _nome = nomeController.text;
    _peso = double.parse(pesoController.text);
    _altura = double.parse(alturaController.text);
    if (_peso > 0 && _altura > 0) {
      var paciente = Paciente(_peso, _altura, _nome);
      // _imc = paciente._imc;
      lista.add(paciente);
      // _index = lista.length - 1;
      nomeController.text = "";
      pesoController.text = "";
      alturaController.text = "";
      alturaController.text = "${paciente._imc}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar Paciente (???)"),
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
            // --- IMC (desabilitado) ---
            Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 20),
              child: TextField(
                enabled: false,
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "IMC",
                  hintText: "IMC",
                ),
                style: TextStyle(fontSize: _fontSize),
                controller: imcController,
              ),
            ),
            // Saída
            RaisedButton(
              child: Text(
                "Cadastrar Paciente",
                style: TextStyle(fontSize: _fontSize),
              ),
              onPressed: _cadastrarPaciente,
            ),
          ],
        ),
      ),
    );
  }
}
