import 'package:tic_tac_toe_mvc/models/model.dart';

class Controller {
  // Atributos
  var game = Model();

  // Métodos
  String get currentPlayer => game.currentPlayer;
  String get printGame => game.printGame;

  void updateGame(int index) {
    game.update(index);
  }

  void reset() {
    game.init();
  }
} // class
