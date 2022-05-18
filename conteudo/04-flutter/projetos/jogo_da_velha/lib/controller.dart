import 'package:jogo_da_velha/model.dart';

class Controller {
  // Atributos
  var jogo = Model('x');
  int numJogadas = 0;
  bool isGameFinished = false;

  // Construtor
  Controller() {
    initGame();
  }

  // Métodos
  void initGame() {
    jogo.reset();
  }

  String get player => jogo.player;
  String buttonSymbol(int index) => jogo.game[index];

  void updateGame(int index) {
    jogo.update(index);
    numJogadas++;
    if (jogo.checkGame() || numJogadas >= 9) {
      isGameFinished = true;
    }
  }

  void reset() {
    initGame();
  }
} // class
