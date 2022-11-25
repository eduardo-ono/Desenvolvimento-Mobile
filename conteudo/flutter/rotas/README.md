
<h1 align="center">Rotas</h1>

<h4 align="center">Prof. Eduardo Ono</h4>

&nbsp;

## Conceitos de Programação em Flutter

### Definição de Rotas Nomeadas no Instanciamento do `MaterialApp`

* Substituir o argumento `home` por `routes`:

```dart
routes: {
    // 'nome_da_rota': (context) => Classe Stateless ou Stateful
    '/': (context) => const MyHomePage(title: 'Título'),
    'outra_tela': (context) => const OutraTela(),
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
| [Rotas Nomeadas](./exemplos/rotas_nomeadas/) | Exemplifica o uso de rotas nomeadas.<br><sub>Baseado na vídeo aula do Prof. Hélio Kamakawa (IFPR): https://www.youtube.com/watch?v=JoNhT_kiuaQ</sub>
| [![img](https://img.youtube.com/vi/Mt41FpSS-Vo/default.jpg)](https://www.youtube.com/watch?v=Mt41FpSS-Vo) | <sup>[Tadas Petra]</sup><br>[__Flutter File Structure for Big Projects__](https://www.youtube.com/watch?v=Mt41FpSS-Vo)<br><sub>(9:39, YouTube, Out/2020)</sub> | 

&nbsp;
