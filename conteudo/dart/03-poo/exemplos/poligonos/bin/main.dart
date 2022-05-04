import 'dart:io';
import 'triangulo.dart';

void main(List<String> arguments) {
  print('Entre com o lado a: ');
  double? a = double.parse(stdin.readLineSync()!);
  print('Entre com o lado b: ');
  double? b = double.parse(stdin.readLineSync()!);
  print('Entre com o lado c: ');
  double? c = double.parse(stdin.readLineSync()!);
  if (Triangulo.validar(a, b, c)) {
    Triangulo triangulo = Triangulo([a, b, c]);
    print(triangulo);
    print('Perímetro = ${triangulo.perimetro}');
    print('Área = ${triangulo.area}');
    triangulo.area = 90;
  } else {
    print('Lados inválidos!');
  }
}
