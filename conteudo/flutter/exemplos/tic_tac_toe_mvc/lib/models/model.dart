class Model {
  // Atributos
  List<String> game = ['x', '', '', '', '', '', '', '', '', ''];
  List<int> winConditions = [123, 456, 789, 147, 258, 369, 159, 357];

  // Métodos
  String get currentPlayer => game[0];
  String get printGame => game.toString();

  void init() {
    game.forEach((element) {
      element = '';
    });
    game[0] = 'x'; // Jogador inicial
  }

  void update(int index) {
    game[index] = game[0];
    game[0] = (game[0] == 'x') ? 'o' : 'x';
  }

  bool checkWinner() {
    for (int i = 1; i < game.length; i++) {
      int a = winConditions[i] ~/ 100;
      int b = (winConditions[i] % 100) ~/ 10;
      int c = ((winConditions[i] % 100) % 10);
      if (game[0] == game[a] && game[0] == game[b] && game[0] == game[c])
        return true;
    }
    return false;
  }
} // class
