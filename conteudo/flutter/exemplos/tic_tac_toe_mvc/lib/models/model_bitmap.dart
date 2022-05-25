import 'dart:math';

class Model {
  // Atributos
  List<String> game = ['x', '', '', '', '', '', '', '', '', ''];
  List<int> ternasVitoria = [
    448, // (111000000) Primeira linha
    056, // (000111000) Segunda linha
    007, // (000000111) Terceira linha
    292, // (100100100) Primeira coluna
    146, // (010010010) Segunda coluna
    073, // (001001001) Terceira coluna
    273, // (100010001) Diagonal principal
    084, // (001010100) Diagonal secundária
  ];
  // game (list) em representação decimal (base 10) para o último jogador
  int gameDecimal = 0;

  // Métodos
  String get currentPlayer => game[0];
  String get printGame => game.toString();

  // Zera o game
  void reset() {
    game.forEach((el) => el = '');
    game[0] = 'x'; // Jogador inicial
    gameDecimal = 0;
  }

  void update(int index) {
    game[index] = game[0];
    game[0] = (game[0] == 'x') ? 'o' : 'x';
  }

  bool checkGame() {
    // Converte o jogo (List) para um número inteiro correspondente
    for (int i = 1; i < game.length; i++) {
      if (game[i] == game[0]) {
        gameDecimal += pow(2, (9 - i));
      }
    }
    for (int i = 0; i < ternasVitoria.length; i++) {
      if (gameDecimal & ternasVitoria[i] == ternasVitoria[i]) {
        return true;
      }
    }
    return false;
  }
} // class
