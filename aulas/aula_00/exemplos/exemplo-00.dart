class Paciente {
  // Atributos
  String nome = '';
  double peso = 0;
  double altura = 0;
  double imc = 0;

  // Construtor
  Paciente({this.nome = '', this.peso = 0, this.altura = 0}) {
    calcularImc();
  }

  // Métodos
  void calcularImc() {
    if (peso > 0 && altura > 0) imc = peso / (altura * altura);
  }

  void imprimirDados() {
    print('Nome: $nome');
    print('Peso: $peso kg');
    print('Altura: $altura m');
    print('IMC: ${imc.toStringAsFixed(1)}');
    print('');
  }
} // Paciente

void main() {
  Paciente paciente =
      new Paciente(peso: 75, altura: 1.82, nome: "Fulano de Tal"); // metros
  var paciente2 = Paciente(nome: "Ciclano de Tal", altura: 1.71, peso: 68);
  paciente.imprimirDados();
} // main()

Paciente inserirPaciente() {
  return Paciente(
    nome: 'Ciclano de Tal',
    peso: 79,
    altura: 1.74,
  );
}
