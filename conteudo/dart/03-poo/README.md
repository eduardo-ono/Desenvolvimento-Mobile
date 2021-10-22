| <sup>Desenvolvimento Mobile > Conteúdo > Dart</sup> |
| --- |

# Orientação a Objetos em Dart

Prof. Eduardo Ono

<br>

## Abstração

<details>
    <summary>Classes e Objetos</summary>

```dart
void main() {
  Paciente paciente = Paciente();
  paciente.nome = "Fulano de Tal";
  paciente.peso = 75; // kg
  paciente.altura = 1.82; // metros
  paciente.calcularImc();
  paciente.imprimirDados();
}

class Paciente {
  // Atributos
  String nome;
  double peso;
  double altura;
  double imc;

  // Métodos

  void calcularImc() {
    imc = peso / (altura * altura);
  }

  void imprimirRegistro() {
    print("Nome: $nome");
    print("Peso: $peso kg");
    print("Altura: $altura m");
    print("IMC: ${imc.toStringAsFixed(1)}");
    print("");
  }
}
```

</details>

<details>
    <summary>Classes e Objetos</summary>

```dart
void main() {
  Paciente paciente1 = new Paciente("Fulano de Tal", 75, 1.82); // metros
  var paciente2 = Paciente("Ciclano de Tal", 68, 1.71);
  paciente1.imprimirDados();
  paciente2.imprimirDados();
}

class Paciente {
  // Atributos
  String nome;
  double peso;
  double altura;
  double imc;

  // Construtor
  Paciente(String nome, double peso, double altura) {
    this.nome = nome;
    this.peso = peso;
    this.altura = altura;
    calcularImc();
  }

  // Métodos

  void calcularImc() {
    imc = peso / (altura * altura);
  }

  void imprimirDados() {
    print("Nome: $nome");
    print("Peso: $peso");
    print("Altura: $altura");
    print("IMC: ${imc.toStringAsFixed(1)}");
    print("");
  }
}
```

```dart
void main() {
  Paciente paciente = new Paciente("Fulano de Tal", 75, 1.82); // metros
  var paciente2 = Paciente("Ciclano de Tal", 68, 1.71);
  paciente.imprimirDados();
}

class Paciente {
  // Atributos
  String nome;
  double peso = 0;
  double altura = 0;
  double imc = 0;

  // Construtor
  Paciente(this.nome, this.peso, this.altura) {
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
}
```

</details>

<details>
    <summary>Classes e Objetos</summary>

```dart
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
      new Paciente(nome: "Fulano de Tal", peso: 75, altura: 1.82); // metros
  var paciente2 = Paciente(nome: "Ciclano de Tal", altura: 1.71, peso: 68);
  paciente.imprimirDados();
} // main()

Paciente inserirPaciente() {
  var paciente = Paciente(nome: 'Ciclano de Tal', peso: 79, altura: 1.74);
  return paciente;
}
```

</details>

<br>

## Herança

<br>

## Encapsulamento

<br>
