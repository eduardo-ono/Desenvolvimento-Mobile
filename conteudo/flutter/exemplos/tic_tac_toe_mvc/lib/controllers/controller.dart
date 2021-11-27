import 'package:tic_tac_toe_mvc/models/model.dart';

class Controller {
  // Atributos
  var jogo = Model();
  int numJogadas = 0;

  // Construtor
  Controller() {
    initGame();
  }

  // Métodos
  void initGame() {
    jogo.reset();
  }

  String get currentPlayer => jogo.currentPlayer;
  String buttonSymbol(int index) => jogo.game[index + 1];
  bool buttonEnabled(int index) => jogo.game[index + 1] == '';
  String get printGame => jogo.printGame;

  void updateGame(int index) {
    jogo.update(index + 1);
    // game.checkGame();
    numJogadas++;
  }

  void reset() {
    initGame();
  }
} // class
