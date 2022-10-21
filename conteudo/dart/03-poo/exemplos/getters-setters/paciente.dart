class Paciente {
  // Atributos privados
  String _nome = '';
  double _peso = 0;
  double _altura = 0;
  double _imc = 0;

  // Construtor
  Paciente({String nome = '', double peso = 0, double altura = 0})
      : _nome = nome,
        _peso = peso {
    this._altura = altura;
    calcularImc();
  }

  // Métodos getters e setters
  String get nome => _nome;

  void set nome(String nome) => _nome = nome;

  void set peso(double peso) {
    if (peso > 0) _peso = peso;
  }

  void set altura(double altura) {
    if (altura > 0) _altura = 0;
  }

  // Métodos
  void calcularImc() {
    if (_peso > 0 && _altura > 0) {
      _imc = _peso / (_altura * _altura);
    }
  }

  void imprimirDados() {
    print('Nome: $_nome');
    print('Peso: $_peso kg');
    print('Altura: $_altura m');
    print('IMC: ${_imc.toStringAsFixed(1)}');
    print('');
  }
} // Paciente

Paciente inserirPaciente() {
  var paciente = Paciente(nome: 'Ciclano de Tal', peso: 79, altura: 1.74);
  return paciente;
}
