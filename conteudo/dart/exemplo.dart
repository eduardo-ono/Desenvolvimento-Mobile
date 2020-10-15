void main() {
  double peso = 75, altura = 1.82;
  double imc;

  imc = peso / (altura * altura);

  print(imc.toStringAsPrecision(3));
}
