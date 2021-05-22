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

  _buildBoard() {
    var buttons = [for (int i = 1; i <= 9; i++) Button(i, _controller)];
    return Expanded(
      child: GridView.count(
        padding: const EdgeInsets.all(10),
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 3,
        //   mainAxisSpacing: 10,
        //   crossAxisSpacing: 10,
        // ),
        crossAxisCount: 3,
        children: buttons,
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
    setState(() {
      _controller.reset();
    });
  }
}

class Button extends StatefulWidget {
  // Atributos
  final int index;
  final Controller controller;

  // Construtor
  Button(this.index, this.controller);

  @override
  _ButtonState createState() => _ButtonState(index, controller);
  // Métodos
}

class _ButtonState extends State<Button> {
  // Atributos
  int _index;
  Controller _controller;
  String _buttonText = '';

  // Construtor
  _ButtonState(this._index, this._controller);

  void _buttonPressed() {
    setState(() {
      _buttonText = _controller.currentPlayer;
      _controller.updateGame(_index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _buttonPressed,
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.teal[600],
        onSurface: Colors.grey,
      ),
      child: Text(
        _buttonText,
        style: TextStyle(
          fontSize: 100.0,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
