

<table>
<tr>
  <th>Código em Flutter</th>
  <th>Estrutura do Projeto</th>
</tr>

<tr>
<td valign="top">

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}
```

<hr>

```dart
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
```

```dart
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
```

</td>

<td valign="top">

```mermaid
flowchart TD
MyApp[MyApp] --> MaterialApp([MaterialApp])
MaterialApp --> MyHomePage[MyHomePage]
MyHomePage --> Scaffold([Scaffold])
Scaffold --> AppBar([AppBar]) --> Text1([Text])
Scaffold --> Center([Center]) --> Column([Column\n])
Column --> Text2([Text])
Column --> Text3([Text])
Scaffold --> FloatingActionButton([FloatingActionButton]) --> Icon([Icon])
```

</td>

</tr>
</table>

&nbsp;
