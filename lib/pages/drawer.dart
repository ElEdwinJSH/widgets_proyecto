import 'package:flutter/material.dart';
import 'package:widgets_proyecto/pages/form_class.dart';
import 'package:widgets_proyecto/pages/form_field.dart';

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
        children: <Widget>[
          const DrawerHeader(
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
            //EN ESTE DENTRO DEL ON TAP SE PONE ESO PARA BUSCAR EL EL DE FORMCLASS DONDE TUVE QUE PONER UN SCAFOLD PARA QUE SE ABRIERA OTRA PAGINA
            title: const Text('Form Class'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const FormClass()));
            },
          ),
          ListTile(
            title: Text('Form Field'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const FormFi()));
            },
          ),
        ],
      )),
    );
  }
}
