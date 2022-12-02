import 'package:flutter/material.dart';
import './views/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const HOME = './';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Teste'),
      // routes: {
      //   HOME: (context) => const MyHomePage(title: 'Paciente'),
      // },
    );
  }
}
