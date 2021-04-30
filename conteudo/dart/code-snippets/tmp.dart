void main() {
  // Função anônima
  var imc = (peso, altura) {
    if (peso > 0 && altura > 0) return peso / (altura * altura);
    return 0.0;
  };

  print(imc(68, 1.73).toStringAsFixed(1));
}
