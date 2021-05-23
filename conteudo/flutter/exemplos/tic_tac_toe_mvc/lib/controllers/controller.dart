import 'package:tic_tac_toe_mvc/models/model.dart';

class Controller {
  // Atributos
  var game = Model();

  // Construtor
  Controller() {
    initGame();
  }

  // Métodos
  void initGame() {
    game.reset();
  }

  String get currentPlayer => game.currentPlayer;
  String buttonSymbol(int index) => game.game[index + 1];
  bool buttonEnabled(int index) => game.game[index + 1] == '';
  String get printGame => game.printGame;

  void updateGame(int index) {
    game.update(index + 1);
  }

  void reset() {
    initGame();
  }
} // class
