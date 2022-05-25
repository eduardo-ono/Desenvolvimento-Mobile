import 'package:flutter/material.dart';
import 'package:jogo_da_velha/controller.dart';

class HomePage extends StatefulWidget {
  // --- Atributos ---
  final String title;

  // --- Construtor ---
  const HomePage({Key? key, required this.title}) : super(key: key);

  // --- Métodos ---
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // --- Atributos ---
  final _controller = Controller();
  // Lista de tamanho fixo de estados (enabled/disabled) dos botões do tabuleiro
  var buttonsEnabledState = List<bool>.filled(9, true);
  var text = '';

  // --- Métodos ---
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildBoard(),
          _buildResetButton(),
        ],
      ),
    );
  }

  // Constrói o tabuleiro
  _buildBoard() {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: _buildButton,
      ),
    );
  }

  Widget _buildButton(context, index) {
    return TextButton(
      onPressed: buttonsEnabledState[index]
          ? () => _buttonPressed(context, index)
          : null,
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.lightBlue[200],
        onSurface: Colors.grey,
      ),
      child: Text(
        _controller.player,
        style: TextStyle(
          fontSize: 100.0,
          color: _controller.player == 'x' ? Colors.teal[800] : Colors.red[800],
        ),
      ),
    );
  }

  _buttonPressed(context, index) {
    _controller.updateGame(index);
    if (_controller.isGameFinished) {
      var msg = (_controller.numJogadas < 9)
          ? 'O jogador \'${_controller.player}\' venceu!'
          : 'Empate!';
      var alertWidget = (context) { AlertDialog(
        title: const Text("Jogo da Velha"),
        content: Text(msg),
        actions: [
          TextButton(
            child: const Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
      }
      showDialog(
        context: context,
        builder: (context),
      );
    }
    setState(() => buttonsEnabledState[index] = false);
  }

  _buildResetButton() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        child: const Text('Reset'),
        onPressed: () => setState(() {
          _controller.reset();
        }),
      ),
    );
  }
}
