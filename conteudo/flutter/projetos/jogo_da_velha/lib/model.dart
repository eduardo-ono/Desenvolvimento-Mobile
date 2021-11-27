import 'dart:math';

class Model {
  // --- Atributos ---
  List<String> game = ['', '', '', '', '', '', '', '', ''];
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
  String player = 'x';
  // game (list) em representação decimal (base 10) para o último jogador
  int gameDecimal = 0;

  // --- Construtor ---
  Model([this.player = 'x']) {
    reset();
  }

  // --- Métodos ---
  // "Zera" o game
  void reset() {
    for (var el in game) {
      el = '';
    }
    gameDecimal = 0;
  }

  void update(int index) {
    game[index] = player;
    player = (player == 'x') ? 'o' : 'x';
  }

  bool checkGame() {
    // Converte o game de um jogador para um número inteiro correspondente
    String playerGameBin = '';
    for (int i = 0; i < game.length; i++) {
      playerGameBin += (game[i] == player) ? '1' : '0';
    }
    var playerGameDec = binToDec(playerGameBin);

    for (int i = 0; i < ternasVitoria.length; i++) {
      if (playerGameDec & ternasVitoria[i] == ternasVitoria[i]) {
        return true;
      }
    }
    return false;
  }

  // Converte um número binário (String) em decimal
  int binToDec(String bin) {
    int dec = 0;
    for (int i = 0; i < bin.length; i++) {
      dec += pow(2, (bin.length - i)) as int;
    }
    return dec;
  }
} // class
