void calcularImc(double peso, double altura, {String nome, int idade}) {
  double imc = peso / (altura * altura);

  print("Nome: $nome");
  print("Idade = $idade");
  print("Peso = $peso");
  print("Altura = $altura");
  print("IMC = ${imc.toStringAsPrecision(3)}");
  print("");
}

void main() {
  calcularImc(74, 1.82);
  calcularImc(74, 1.82, nome: "Fulano");
  calcularImc(74, 1.82, nome: "Fulano", idade: 29);
  calcularImc(74, 1.82, idade: 29);
  calcularImc(74, 1.82, idade: 29, nome: "Fulano");
}
