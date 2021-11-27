> <h5>Desenvolvimento Mobile > Conteúdo > Dart</h5>

# Estrutura de Dados em Dart

Prof. Eduardo Ono

<br>

## Listas (List)

A linguagem Dart representa arrays (vetores) como uma lista de objetos. Elementos de uma lista são indexados a partir do índice 0 (zero).

Para os exemplos na tabela a seguir, conseidere a declaração:

```dart
var lst = [ 2, 3, 5, 7, 11, 13 ];
```

| Atributos | Descrição | Exemplo |
| --- | --- | --- |
| first      | Retorna o primeiro elemento da lista. | `print(lst.first)` // 2
| isEmpty    | Retorna `true` se a lista não possuir nenhum elemento. | `print(lst.isEmpty);` // false
| isNotEmpty | Retorna `true` se a lista possuir ao menos um elemento. | `print(lst.isNotEmpty);` // true
| length     | Retorna o tamanho (número de elementos) da lista. | `print(lst.length)` // 6
| last       | Retorna o último elemento da lista. | `print(lst.last);` // 13
| reversed   | Retorna um _iterable_ com os elementos da lista em ordem recersa. | `print(lst.reversed);` // (13, 11, 7, 5, 3 ,2)
| single     | Verica se a lista possui um único eleento e o retorna. | `print(lst.single);` // false

| Métodos | Descrição | Exemplo |
| --- | --- | --- |
| add(...) | Adiciona um elemento ao final da lista. | `add(17);`
| clear()  | Remove todos os elementos da lista, mas mantém a lista com tamanho zero. | `lst.clear();`
| removeAt(int) | Remove um elemento de um índice específico. | `print(lst.removeAt(2));`<br> [2, 3, 7, 11, 13] VERIFICAR!

<br>

<details>
  <summary>Funções Anônimas</summary>

```dart
void main() {
  List primos = <int>[ 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47 ];

  primos.forEach((elemento) {
    print(elemento);
  });

  // ou

  primos.forEach((elemento) => print(elemento));
}
```

</details>

<br>
