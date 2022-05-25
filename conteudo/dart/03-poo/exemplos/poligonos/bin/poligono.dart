abstract class Poligono {
  // Atributos
  String _titulo = '';
  List<double> lados = [];
  bool _regular = false;
  double _perimetro = 0;
  double _area = 0;

  // Construtor
  Poligono(this.lados, {String titulo = ''}) : _titulo = titulo {
    _determinarTitulo();
    calcularPerimetro();
    calcularArea();
  }

  // Métodos
  String get titulo => _titulo;
  double get perimetro => _perimetro;
  double get area => _area;
  // Apenas para fins didáticos
  set perimetro(double _perimetro) => this._perimetro = _perimetro;
  set area(double area) => _area = area;

  void _determinarTitulo() {
    if (_titulo == '') {
      switch (lados.length) {
        case 3:
          _titulo = 'Triângulo';
          break;
        case 4:
          _titulo = 'Quadrilátero';
          break;
        case 5:
          _titulo = 'Pentágono';
          break;
        case 6:
          _titulo = 'Hexágono';
          break;
      }
    }
  }

  @override
  String toString() {
    String ladosStr = _titulo + ':';
    for (double el in lados) {
      ladosStr += " " + el.toString();
    }
    return ladosStr;
  }

  void calcularPerimetro();
  void calcularArea();
}
