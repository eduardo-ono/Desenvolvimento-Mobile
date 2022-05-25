/*
  Título           : App para calcular o IMC de uma pessoa.
  Desenvolvido por : Eduardo Ono
  Data             :
  Atualizado em    : 12/11/2021
  Tópicos          :
    - Listas (CRUD)
    - Drawer
    - Rotas (Navigator)
  Referências      :
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

  // Construtor
  Paciente(this._peso, this._altura, [this._nome]) {
    this._imc = calcularImc();
  }

  // Métodos
  double calcularImc() {
    return 1.3 * _peso / pow(_altura, 2.5);
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Paciente> lista = []; // Lista vazia

  // Construtor
  MyApp() {
    var paciente1 = Paciente(68.0, 1.70, "Fulano de Tal");
    var paciente2 = Paciente(73.0, 1.79, "Ciclano de Tal");
    lista.add(paciente1);
    lista.add(paciente2);
    lista.add(Paciente(75, 1.81, "Beltrano de Tal"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IMC - Rotas Nomeadas",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(lista),
    );
  }
}

class HomePage extends StatefulWidget {
  // Atributos
  final List<Paciente> lista;

  // Construtor
  HomePage(this.lista);

  @override
  _HomePageState createState() => _HomePageState(lista);
}

class _HomePageState extends State<HomePage> {
  // Atributos
  final List<Paciente> lista;

  // Construtor
  _HomePageState(this.lista);

  // Métodos
  void _atualizarTela() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Este método é executado todas as vezes que setState é chamado.
    return Scaffold(
      drawer: NavDrawer(lista),
      appBar: AppBar(
        title: Text("Pacientes (${lista.length})"),
      ),
      body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                "${lista[index]._nome}, IMC: ${lista[index]._imc.toStringAsFixed(1)}",
                style: TextStyle(fontSize: 18.0),
              ),
              onTap: () {},
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _atualizarTela,
        tooltip: 'Atualizar',
        child: Icon(Icons.update),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  // Atributos
  final List lista;
  final double _fontSize = 17.0;

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
            leading: Icon(Icons.person),
            title: Text(
              "Informações do Paciente",
              style: TextStyle(fontSize: _fontSize),
            ),
            onTap: () {
              Navigator.pop(context); // Fecha o Drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TelaInformacoesDoPaciente(lista),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person_search),
            title: Text(
              "Buscar por um Paciente",
              style: TextStyle(fontSize: _fontSize),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TelaBuscarPorPaciente(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_sharp),
            title: Text(
              "Cadastrar um Novo Paciente",
              style: TextStyle(fontSize: _fontSize),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TelaCadastrarPaciente(lista),
                ),
              );
            },
          ),
          Container(
            padding: EdgeInsets.all(20.0),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListTile(
              leading: Icon(Icons.face),
              title: Text(
                "Sobre",
                style: TextStyle(fontSize: _fontSize),
              ),
              onTap: () => {},
            ),
          ),
        ],
      ),
    );
  }
}

//-----------------------------------------------------------------------------
// Tela Informações do Paciente
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
  double _fontSize = 18.0;
  final nomeController = TextEditingController();
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();
  final imcController = TextEditingController();
  bool _edicaoHabilitada = false;

  // Construtor
  _TelaInformacoesDoPaciente(this.lista) {
    if (lista.length > 0) {
      index = 0;
      paciente = lista[0];
      nomeController.text = paciente._nome;
      pesoController.text = paciente._peso.toString();
      alturaController.text = paciente._altura.toString();
      imcController.text = paciente._imc.toStringAsFixed(1);
    }
  }

  // Métodos
  void _exibirRegistro(index) {
    if (index >= 0 && index < lista.length) {
      this.index = index;
      paciente = lista[index];
      nomeController.text = paciente._nome;
      pesoController.text = paciente._peso.toString();
      alturaController.text = paciente._altura.toString();
      imcController.text = paciente._imc.toStringAsFixed(1);
      setState(() {});
    }
  }

  void _atualizarDados() {
    if (index >= 0 && index < lista.length) {
      _edicaoHabilitada = false;
      lista[index]._nome = nomeController.text;
      lista[index]._peso = double.parse(pesoController.text);
      lista[index]._altura = double.parse(alturaController.text);
      lista[index]._imc = lista[index].calcularImc();
      setState(() {});
    }
  }

  void _removerPaciente() {
    lista.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var titulo = "Informações do Paciente  [${index + 1}/${lista.length}]";
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
      appBar: AppBar(title: Text(titulo)),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  _edicaoHabilitada = true;
                  setState(() {});
                },
                tooltip: 'Primeiro',
                child: Text("Hab. Edição"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                enabled: _edicaoHabilitada,
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
                enabled: _edicaoHabilitada,
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
                enabled: _edicaoHabilitada,
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
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <ElevatedButton>[
                  ElevatedButton(
                    child: Text(
                      "Atualizar",
                      style: TextStyle(fontSize: _fontSize),
                    ),
                    onPressed: _atualizarDados,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Remover",
                      style: TextStyle(fontSize: _fontSize),
                    ),
                    onPressed: _removerPaciente,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <FloatingActionButton>[
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: () => _exibirRegistro(0),
                    tooltip: 'Primeiro',
                    child: Icon(Icons.first_page),
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: () => _exibirRegistro(index - 1),
                    tooltip: 'Primeiro',
                    child: Icon(Icons.navigate_before),
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: () => _exibirRegistro(index + 1),
                    tooltip: 'Primeiro',
                    child: Icon(Icons.navigate_next),
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: () => _exibirRegistro(lista.length - 1),
                    tooltip: 'Primeiro',
                    child: Icon(Icons.last_page),
                  ),
                ],
              ),
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
      appBar: AppBar(title: Text("Buscar por Paciente")),
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
      var paciente = Paciente(_peso, _altura, _nome); // Cria um novo objeto
      lista.add(paciente);
      // _index = lista.length - 1;
      nomeController.text = "";
      pesoController.text = "";
      alturaController.text = "";
      imcController.text = "${paciente._imc.toStringAsFixed(1)}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar um Novo Paciente"),
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
            ElevatedButton(
              child: Text(
                "Cadastrar",
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
