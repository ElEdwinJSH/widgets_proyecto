import 'package:flutter/material.dart';
import 'package:widgets_proyecto/pages/radio_class.dart';
import 'package:widgets_proyecto/pages/single_child_scroll_view.dart';

class ListV extends StatefulWidget {
  const ListV({super.key});

  @override
  State<ListV> createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        ListTile(
          //EN ESTE DENTRO DEL ON TAP SE PONE ESO PARA BUSCAR EL EL DE FORMCLASS DONDE TUVE QUE PONER UN SCAFOLD PARA QUE SE ABRIERA OTRA PAGINA
          title: const Center(
            child: Text('Radio'),
          ),
          tileColor: Colors.red,

          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const RadioI()));
          },
        ),
        ListTile(
          //EN ESTE DENTRO DEL ON TAP SE PONE ESO PARA BUSCAR EL EL DE FORMCLASS DONDE TUVE QUE PONER UN SCAFOLD PARA QUE SE ABRIERA OTRA PAGINA
          title: const Center(
            child: Text('Single Child Scroll View'),
          ),
          tileColor: Colors.amber,

          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const SingleScroll()));
          },
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }
}
