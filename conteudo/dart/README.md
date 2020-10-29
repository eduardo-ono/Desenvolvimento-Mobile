# Desenvolvimento Mobile > Dart

Prof. Eduardo Ono

<br>

## Conceitos

* [Código Fonte TV] [Dart (a linguagem do Flutter)](https://www.youtube.com/watch?v=i7IzlVImHEc) (YouTube, 5:53, Out/2019)

<br>

## Ambiente de Desenvolvimento

* [Link](ambiente-de-desenvolvimento.md)

<br>

## Fundamentos da Linguagem

### Hello World!

<details>
    <summary>Primeiro programa em Dart</summary>

```dart
void main() {
    print('Olá mundo!');
    // ou
    print("Olá mundo!");
}
```
</details>

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

// Parâmetros opcionais identificados (entre chaves)
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

### Vetores

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
  double peso;
  double altura;
  double imc;

  // Construtor
  Paciente(this.nome, this.peso, this.altura) {
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

</details>

### Encapsulamento

### Herança

### Polimorfisno

<br>

## Estrutura de Dados

* Listas Encadeadas
* Pilhas e Filas
* Árvores
* Grafos

<br>

## Vídeos Recomendados
<br>

* [coding right] [Dart Programming Language - Beginner to Intermediate Full Tutorial](https://www.youtube.com/watch?v=afXXvBOWq14) (YouTube, 2:04:31, 2020)
* [Tensor Programming] [Introduction to Dart for Beginners - Types, Variables, Functions and Objects - Part One](https://www.youtube.com/watch?v=8F2uemqLwvE) (YouTube, 21:31, 2019)
* [Derek Banas] [Dart Tutorial (2015)](https://www.youtube.com/watch?v=OLjyCy-7U2U) (YouTube, 1:18:06)

<br>

## Bibliografia
