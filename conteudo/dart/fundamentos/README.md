---
marp: false
---

Desenvolvimento Mobile > Conteúdo > Dart

# Fundamentos

Prof. Eduardo Ono

<br>

### Hello World!

<details>
    <summary>Primeiro programa em Dart</summary>
    <section>

```dart
void main() {
  print('Olá mundo!');
  // ou
  print("Olá mundo!");
}
```

  </section>
</details>

---

### Tipos de Dados, Variáveis e Operadores

<details>
    <summary>Cálculo do IMC</summary>

```dart
void main() {
  double peso = 75, altura = 1.82;
  double imc;

  imc = peso / (altura * altura);

  print(imc.toStringAsPrecision(3));
}
```
</details>

---

### Estruturas de Decisão

<details>
    <summary>Estrutura if-else</summary>

```dart
import 'dart:math';

void main() {
  var random = new Random();
  int num =
      random.nextInt(100);  // Gera um número inteiro aleatório menor que 100

  print("Número = $num");
  if (num % 2 == 0)
    print("O número é par.");
  else
    print("O número é impar.");
}
```
</details>

---

### Estruturas de Repetição

<details>
    <summary>for, while e do-while</summary>

```dart
import 'dart:io';

void main() {
  int i;

  for (i = 0; i < 100; i++) {
    stdout.write('$i '); // "print" sem quebra de linha ao final
  }
  print('');

  i = 0;
  while (i < 100) {
    stdout.write('${i++} ');
    i++;
  }
  print('');

  i = 0;
  do {
    stdout.write('$i ');
    i++;
  } while (i < 100);
  print('');
}
```

</details>

---

### Funções

<details>
    <summary>Funções: Parâmetros identificados em Dart</summary>

```cpp
// C++

#include <iostream>
#include <cstdio>

using namespace std;

void calcularImc(double peso, double altura)
{
    double imc = peso / (altura * altura);
    cout << "Peso = " << peso << endl;
    cout << "IMC = " << imc << "\n\n";
}

void calcularImc(double peso, double altura, string nome)
{
    double imc = peso / (altura * altura);

    printf("Nome: %s\n", nome);
    cout << "Nome: " << nome << endl;
    printf("Peso = %.1f\n", peso);
    printf("IMC = %.1f\n\n", imc);
}

int main()
{
    calcularImc(74, 1.82);
    calcularImc(74, 1.82, "Fulano");
    calcularImc(74, "Fulano", 1.82);  // ERRO!
    return 0;
}
```

---

```dart
// Dart

// Sequência de parâmetros opcionais (entre colchetes)
void calcularImc(double peso, double altura, [String nome, int idade]) {
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
  calcularImc(74, 1.82, "Fulano");
  calcularImc(74, 1.82, "Fulano", 29);
  calcularImc(74, 1.82, 29); // ERRO!
  calcularImc(74, 1.82, 29, "Fulano"); // ERRO!
}
```

```dart
// Dart

// Parâmetros opcionais nomeados (entre chaves)
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
```

</details>

---

<details>
  <summary>Funções Anônimas</summary>

```dart
void main() {
  // Função anônima
  var imc = (peso, altura) {
    if (peso > 0 && altura > 0) return peso / (altura * altura);
    return 0.0;
  };

  print(imc(68, 1.73).toStringAsFixed(1));
}
```

</details>

---

### Arrays/Listas

* Listas de Tamanho Fixo

```Dart
void main() {
  var lista = ['morango', 'abacaxi', 'caju'];
  // lista[0] = 10; // ERRO!
  lista[1] = 'maracujá';
  print(lista[0]);
  lista.add('abacate');
  print(lista);
  print('Número de elementos = ${lista.length}'); // 4
  for (var i = 0; i < lista.length; i++) {
    print('$i: ${lista[i]}');
  }
  var frutas = const ['abacaxi', 'amora', 'banana', 'caju'];
  // frutas[0] = 'abacate'; // ERRO!
  frutas.forEach((element) {
    print('${frutas.indexOf(element)}: $element');
  });
}
```

<br>

## Programação Orientada à Objeto

### Abstração

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

<br>
