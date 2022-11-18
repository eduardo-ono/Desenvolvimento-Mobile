import 'package:flutter/material.dart';
import './views/my_home_page.dart';
import './views/about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const HOME = '/';
  static const MY_HOME_PAGE = 'my_home_page';
  static const ABOUT = 'about';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HOME: (context) => const MyHomePage(title: 'Lista de Contatos'),
        ABOUT: (context) => const About(),
      },
    );
  }
}
