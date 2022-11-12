
<h1 align="center">Rotas</h1>

<h4 align="center">Prof. Eduardo Ono</h4>

&nbsp;

## Conceitos de Programação em Flutter

### Definição de Rotas Nomeadas no Instanciamento do `MaterialApp`

* Substituir o argumento `home` por `routes`:

```dart
routes: {
    '/': (context) => MyHomePage('Título'),
    'outra_tela': (context) => OutraTela(),
}
```

&nbsp;

### Abrir uma nova tela (botão na AppBar)

* No instanciamento da `AppBar`, passar o argumento:

```dart
actions: [
    IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
            Navigator.of(context).pushNamed('nome_da_rota');
        }
    ),
]
```

&nbsp;

## Dicas de Programação

### Emmets

| Atalho | Descrição |
| --- | --- |
| `stl` | Cria uma classe derivada da `StetelessWidget`.
| `stf` | Cria uma classe derivada da `StatefulWidget`.

&nbsp;

## Exemplos

| Projeto | Descrição |
| --- | --- |
| Rotas Nomeadas | Exemplifica o uso de rotas nomeadas.<br>Baseado na vídeo aula do Prof. Hélio Kamakawa (IFPR): 

&nbsp;
