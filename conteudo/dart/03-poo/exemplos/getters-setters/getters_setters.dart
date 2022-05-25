import 'paciente.dart';

void main() {
  var paciente1 = Paciente(nome: "Fulano de Tal", peso: 75, altura: 1.82);
  var paciente2 = Paciente(altura: 1.71, peso: 68, nome: "Ciclano de Tal");
  // print(paciente1._nome); // ERRO!
  print(paciente1.nome + '\n');
  paciente1.nome = 'Beltrano de Tal';
  paciente1.imprimirDados();
  paciente2.imprimirDados();
}
