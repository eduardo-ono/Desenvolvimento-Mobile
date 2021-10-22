void main() {
  dynamic peso = 75, altura = 1.82;
  dynamic imc = 'Olá mundo';
  print(imc.runtimeType); // String
  imc = peso / (altura * altura);
  print(imc.runtimeType); // double
  print('IMC = ${imc.toStringAsFixed(1)}');
}
