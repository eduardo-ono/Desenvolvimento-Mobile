import 'package:flutter/material.dart';
import 'package:tic_tac_toe_mvc/controllers/controller.dart';

class HomePage extends StatefulWidget {
  // Atributos
  final String title;

  // Construtor
  HomePage({Key key, this.title}) : super(key: key);

  // Métodos
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Atributos
  var _controller = Controller();

  // Métodos
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildBoard(),
        _buildResetButton(),
      ],
    );
  }

  // Constrói o tabuleiro
  _buildBoard() {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: _buildButton,
      ),
    );
  }

  _buildResetButton() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        child: Text('Reset'),
        onPressed: _resetGame,
      ),
    );
  }

  _resetGame() {
    _controller.reset();
    setState(() {});
  }

  Widget _buildButton(context, index) {
    return TextButton(
      onPressed:
          _controller.buttonEnabled(index) ? () => _buttonPressed(index) : null,
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.lightBlue[200],
        onSurface: Colors.grey,
      ),
      child: Text(
        _controller.buttonSymbol(index),
        style: TextStyle(
          fontSize: 100.0,
          color: _controller.buttonSymbol(index) == 'x'
              ? Colors.teal[800]
              : Colors.red[800],
        ),
      ),
    );
  }

  _buttonPressed(index) {
    setState(() {
      _controller.updateGame(index);
    });
  }
}
