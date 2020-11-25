import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Imagem da Web';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Image.network(
            'https://img.youtube.com/vi/YXtiDUSaNQE/mqdefault.jpg',
          ),
        ),
      ),
    ); // MaterialApp
  }
}
