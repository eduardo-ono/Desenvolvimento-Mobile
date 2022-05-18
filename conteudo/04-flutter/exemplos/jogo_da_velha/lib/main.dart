/*
* Project: Jogo da Velha ("Tic Tac Toe")
* Developer: Eduardo Ono
*/

import 'package:flutter/material.dart';

//Colors
Color crossColor = const Color(0xFF1ABDD5);
Color circleColor = const Color(0xFFD8B9FA);
Color accentColor = const Color(0xFF90A4AE);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogo da Velha',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TwoPlayerGame(),
    );
  }
}

enum GameState { Blank, X, O }

class TwoPlayerGame extends StatefulWidget {
  @override
  _TwoPlayerGameState createState() => _TwoPlayerGameState();
}

class _TwoPlayerGameState extends State<TwoPlayerGame> {
  var game = TicTacToe();
  var jogo = List.filled(10, '');
  var jogadaAtual = 'x';
  var winner = '';
  int _xWins = 0;
  int _oWins = 0;
  int _draws = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Jogo da Velha'),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            scoreBoard,
            Padding(
              padding: const EdgeInsets.only(
                  left: 100.0, right: 100.0, top: 40, bottom: 40),
              child: Stack(
                children: <Widget>[
                  Column(
                    children: [
                      Row(children: <Widget>[
                        Botao(1),
                        Botao(2),
                        Botao(3),
                      ]),
                      Row(
                        children: <Widget>[
                          Botao(4),
                          Botao(5),
                          Botao(6),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Botao(7),
                          Botao(8),
                          Botao(9),
                        ],
                      ),
                    ],
                  ),
                  winnerDisplay,
                ],
              ),
            ),
            bottomBar,
          ],
        ),
      ),
    );
  }

  void get saxsxasx => Padding(child: Text(''));

  Widget get scoreBoard => Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            xScore,
            drawScore,
            oScore,
          ],
        ),
      );

  Widget get winnerDisplay => Positioned(
        top: 0,
        bottom: 0,
        left: 0,
        right: 0,
        child: Visibility(
          visible: _showWinnerDisplay,
          child: Opacity(
            opacity: 1.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (winner == 'x')
                  SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: Text('x'),
                  ),
                if (winner == 'o')
                  SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: Text('o'),
                  ),
                Text(
                  (winner == '') ? "It's a draw!" : 'win!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: accentColor,
                    fontSize: 56.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget get xScore => Column(
        children: <Widget>[
          SizedBox(
            width: 80.0,
            height: 80.0,
            child: Text(
              'X',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 50, fontWeight: FontWeight.bold, color: crossColor),
            ),
          ),
          Text(
            '$_xWins wins',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: crossColor,
              fontSize: 20.0,
            ),
          ),
        ],
      );

  Widget get oScore => Column(
        children: <Widget>[
          SizedBox(
            width: 80.0,
            height: 80.0,
            child: Text(
              'O',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: circleColor),
            ),
          ),
          Text(
            '$_oWins wins',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: circleColor,
                fontSize: 20.0),
          )
        ],
      );

  Widget get drawScore => Column(
        children: <Widget>[
          SizedBox(
            width: 80.0,
            height: 80.0,
            child: Text(
              '=',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50, color: Color(0xFF90A4AE)),
            ),
          ),
          Text(
            '$_draws draws',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: accentColor,
                fontSize: 20.0),
          )
        ],
      );

  Widget get bottomBar => Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FloatingActionButton(
              heroTag: 'reset',
              child: Icon(Icons.cached),
              backgroundColor: accentColor,
              mini: true,
              onPressed: () => reset(),
            ),
          ],
        ),
      );
}

class Botao extends StatefulWidget {
  final int id;
  Botao(this.id);
  @override
  _BotaoState createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {
  final int _id = widget.id;
  String simbolo;

  void executarAlgo() {}

  Widget build(BuildContext context) {
    return TextButton(
      child: Text(simbolo),
      onPressed: () => executarAlgo(),
    );
  }
}

class TicTacToe {
  // Atributos
  var game = List.filled(10, '');
  int numMoves = 0;
  int numGames_X = 0;
  int numGames_O = 0;

  // Métodos
  bool checkMove() {
    var ternas = <String>[
      '123',
      '456',
      '789',
      '147',
      '258',
      '369',
      '159',
      '357'
    ];
    String move = game[0];
    bool winner = false;
    for (int i = 0; i < ternas.length; i++) {
      int a = int.parse(ternas[i][0]);
      int b = int.parse(ternas[i][1]);
      int c = int.parse(ternas[i][2]);
      if (game[a] == move && game[b] == move && game[c] == move) winner = true;
    }
    return winner;
  }

  void reset() {
    game.clear();
    game[0] = 'x';
  }
}
