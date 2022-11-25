import 'dart:math';

class Paciente {
  // Atributos
  String _nome = '';
  double _peso = 0;
  double _altura = 0;
  double _imc = 0;

  // Construtor
  Paciente({nome = '', required peso, required altura})
      : _nome = nome,
        _peso = peso,
        _altura = altura {
    _imc = calcularImc();
  }

  // Métodos

  String get nome => _nome;
  double get peso => _peso;
  double get altura => _altura;

  set nome(String nome) {
    _nome = nome;
  }

  set peso(double peso) {
    if (peso > 0) {
      _peso = peso;
    }
  }

  set altura(double altura) {
    if (altura > 0) {
      _altura = altura;
    }
  }

  double calcularImc() {
    if (_imc == 0) return 0;
    return 1.3 * _peso / pow(_altura, 2.5);
  }
}
