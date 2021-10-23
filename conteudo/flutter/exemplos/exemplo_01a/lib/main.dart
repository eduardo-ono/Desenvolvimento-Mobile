import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final String _title = 'exemplo_01a';
  final _textStyle = TextStyle(backgroundColor: Colors.blue, fontSize: 40);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: new Scaffold(
            appBar: AppBar(title: Text(_title)),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Hello World!',
                    style: _textStyle,
                  ),
                  Text(
                    'Hello World!',
                    style: _textStyle,
                  ),
                  Text(
                    'Hello World!',
                    style: _textStyle,
                  ),
                ],
              ),
            )));
  }
}
