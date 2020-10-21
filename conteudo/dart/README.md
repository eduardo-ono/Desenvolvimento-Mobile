# Desenvolvimento Mobile > Dart

Prof. Eduardo Ono

<br>

## Conceitos
<br>

* [Código Fonte TV] [Dart (a linguagem do Flutter)](https://www.youtube.com/watch?v=i7IzlVImHEc) (YouTube, 5:53, Out/2019)

<br>

## Ambiente de Desenvolvimento
<br>

* [Link](ambiente-de-desenvolvimento.md)

<br>

## Fundamentos da Linguagem
<br>

<details>
    <summary>Primeiro programa em Dart</summary>

```dart
void main() {
    print('Olá mundo!');
}
```
</details>

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

<details>
    <summary>Funções: Parâmetros identificados em Dart</summary>

```cpp
// C++

#include <iostream>

using namespace std;


// Sobrecarga de funções (Polimorfismo)

void calcularImc(double peso, double altura)
{
    double imc = peso / (altura * altura);
    cout << "Peso = " << peso << endl;
    cout << "IMC = " << imc << "\n\n";
}

void calcularImc(double peso, double altura, string nome)
{
    double imc = peso / (altura * altura);

    cout << "Nome: " << nome << endl;
    cout << "Peso = " << peso << endl;
    cout << "IMC = " << imc << "\n\n";
}

int main()
{
    calcularImc(74, 1.82);
    calcularImc(75, 1.79, "Fulano");
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

<br>

## Vídeos Recomendados
<br>

* [coding right] [Dart Programming Language - Beginner to Intermediate Full Tutorial](https://www.youtube.com/watch?v=afXXvBOWq14) (YouTube, 2:04:31, 2020)
* [Tensor Programming] [Introduction to Dart for Beginners - Types, Variables, Functions and Objects - Part One](https://www.youtube.com/watch?v=8F2uemqLwvE) (YouTube, 21:31, 2019)
* [Derek Banas] [Dart Tutorial (2015)](https://www.youtube.com/watch?v=OLjyCy-7U2U) (YouTube, 1:18:06)

<br>

## Bibliografia
