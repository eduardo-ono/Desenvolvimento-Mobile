import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final mensagem = 'Olá mundo!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                mensagem,
                style: TextStyle(
                  fontFamily: 'Times',
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF0000FF),
                  backgroundColor: Color(0x20FF0000),
                ),
              ),
              Text('Boa noite!'),
            ],
          ),
        ),
      ),
    );
  }
}

class EstiloText extends TextStyle {}
