import 'package:flutter/material.dart';
import '../main.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          _openListTile(context, Icons.ad_units, 'Tela 1', MyApp.TELA1),
          _openListTile(context, Icons.person, 'About', MyApp.ABOUT),
        ],
      ),
    );
  }

  Widget _openListTile(context, icon, text, route) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: () {
        Navigator.pop(context); // Fecha a view (tela), ou seja, o menu lateral.
        Navigator.of(context).pushNamed(route);
      },
    );
  }
}
