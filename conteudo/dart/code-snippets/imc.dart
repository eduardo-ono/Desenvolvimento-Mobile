import 'dart:math';

void main() {
  double peso = 75, altura = 1.82;
  double imc;

  imc = peso / pow(altura, 2);

  print(imc.toStringAsPrecision(3));
}
