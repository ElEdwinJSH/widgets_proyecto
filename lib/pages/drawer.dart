import 'package:flutter/material.dart';

class DrawerC extends StatefulWidget {
  const DrawerC({super.key});

  @override
  State<DrawerC> createState() => _DrawerCState();
}

class _DrawerCState extends State<DrawerC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Mensajes'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ajustes'),
          ),
        ],
      )),
    );
  }
}
