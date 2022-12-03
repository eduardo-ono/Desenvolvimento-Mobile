import 'package:flutter/material.dart';
import '../main.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu'),
          ),
          ListTile(
            title: const Text('Cadastrar novo paciente'),
            onTap: () => Navigator.of(context).pushNamed(MyApp.CADASTRO),
          ),
        ],
      ),
    );
  }
}
