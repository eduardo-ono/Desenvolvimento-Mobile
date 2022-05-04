import 'dart:math';
import 'poligono.dart';

class Triangulo extends Poligono {
  // Construtor
  Triangulo(List<double> lados, {String titulo = ""})
      : super(lados, titulo: titulo);

  @override
  void calcularPerimetro() {
    perimetro = 0;
    // "forEach" para percorrer a lista.
    for (double el in lados) {
      perimetro += el;
    }
  }

  @override
  void calcularArea() {
    double s = perimetro / 2;
    double produtorio = s;
    for (double el in lados) {
      produtorio *= (s - el);
    }
    super.area = sqrt(produtorio);
  }

  static bool validar(double a, double b, double c) {
    return (a < b + c && b < a + c && c < a + b);
  }
} // class
