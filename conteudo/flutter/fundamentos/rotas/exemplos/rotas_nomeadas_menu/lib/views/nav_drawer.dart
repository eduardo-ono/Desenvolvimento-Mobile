import 'package:flutter/material.dart';
import '../main.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.ad_units),
              title: Text('Tela 1'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(MyApp.TELA1);
              }),
          _aboutListTile(context),
        ],
      ),
    );
  }

  Widget _aboutListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text('About'),
      onTap: () {
        Navigator.pop(context); // Fecha o Drawer
        Navigator.of(context).pushNamed(MyApp.ABOUT);
      },
    );
  }
}
