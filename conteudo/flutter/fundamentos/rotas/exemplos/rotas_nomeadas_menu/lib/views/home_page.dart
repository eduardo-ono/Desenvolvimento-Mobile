import 'package:flutter/material.dart';
import '../main.dart';
import 'nav_drawer.dart';

class HomePage extends StatefulWidget {
  // Atributos
  final String title;

  // Construtor
  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Métodos
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.ad_units),
            onPressed: () {
              Navigator.of(context).pushNamed(MyApp.TELA1);
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.of(context).pushNamed(MyApp.ABOUT);
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
