import 'package:flutter/material.dart';

void main() {
  runApp(new MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  final String str1 = 'Hello World!';
  final String str2 = 'Olá Mundo!';
  final textStyle = new TextStyle(fontSize: 30);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Hello World 02',
        home: new Column(
          children: <Widget>[
            Text(str1, style: textStyle),
            Text(str2, style: textStyle),
          ],
        ));
  }
}
