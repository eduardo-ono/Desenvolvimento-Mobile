<table>
<tr>
<td align="left" width="8000">
  <small>Desenvolvimento Mobile > Conteúdo > Flutter</small>
</td>
<td align="right">
  <small>Atualizado&nbsp;em:&nbsp;11/05/2022</small>
</td>
</tr>
</table>

<br>

<h1 align="center">
Fundamentos - Flutter
</h1>
<h4 align="center">
Prof. Eduardo Ono
</h4>

<br>

## "Estilo Flutter" de Programação



<br>

## Principais Widgets


### "Containers"

<table>
<tr>
  <th>Widget</th>
  <th>Descrição</th>
  <th>Exemplo</th>
</tr>

<tr>
  <td valign="top">
Scaffold
  </td>
  <td valign="top">
  Descrição
  </td>
  <td>

```dart
Scaffold(
    appBar: AppBar(
        title: const Text('Meu App')
    ),
);
```

  </td>
</tr>
</table>


### Componentes Gráficos

<table>
<tr>
  <th>Widget</th>
  <th>Descrição</th>
  <th>Parâmetros do Construtor</th>
</tr>

<tr>
  <td valign="top">
Text
  </td>
  <td valign="top">
Componente para texto.
  </td>
  <td>
  </td>
</tr>
</table>

### Exemplos de Uso do Widget `Text`

<table>
<tr>
  <th>Código</th>
  <th>Preview</th>
</tr>

<tr>
  <td valign="top">

```dart
Text('Olá Mundo!');
```

  </td>
  <td>
Olá Mundo!
  </td>
  </tr>

<tr>
<td>

```dart
Text(
    'Olá Mundo!',
    style: TextStyle(fontWeight: FontWeight.bold),
);
```

  </td>
  <td>

__Olá Mundo!__

  </td>
</tr>
<tr>
<td>

```dart
Text(
    'Olá Mundo!',
    style: TextStyle(fontStyle: FontStyle.italic),
);
```

  </td>
  <td>

_Olá Mundo!_

  </td>
</tr>

<tr>
<td>

```dart
Text(
    'Olá Mundo!',
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
    ),
);
```

  </td>
  <td>

__*Olá Mundo!*__

  </td>
</tr>

</table>

<br>

## Vídeos Recomendados

* [RetroPortal Studio] [Top 10 Must Know Widgets In Detail for Flutter Developers - Flutter Tutorial](https://www.youtube.com/watch?v=x1LHDKLDT38)<br><sub>(YouTube, 1:09:12, Abr/2020)</sub>

* [MVVM no Flutter - Estrutura para iniciantes](https://www.youtube.com/watch?v=WgadnZcujuc)

<br>
