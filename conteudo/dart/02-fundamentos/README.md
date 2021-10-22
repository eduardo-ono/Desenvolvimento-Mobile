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

#### Tipo Dinâmico

<details>
    <summary>Cálculo do IMC</summary>

```dart
void main() {
  dynamic peso = 75, altura = 1.82;
  dynamic imc = 'Olá mundo';
  print(imc.runtimeType); // String
  imc = peso / (altura * altura);
  print(imc.runtimeType); // double
  print('IMC = ${imc.toStringAsFixed(1)}');
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
    <summary>Funções: Parâmetros nomeados em Dart</summary>

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

<details>
  <summary>Listas de Tamanho Fixo</summary>
  <section>

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

  </section>
</details>

<br>
