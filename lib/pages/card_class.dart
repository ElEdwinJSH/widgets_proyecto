import 'package:flutter/material.dart';

class CardC extends StatefulWidget {
  const CardC({super.key});

  @override
  State<CardC> createState() => _CardCState();
}

class _CardCState extends State<CardC> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Bosque de Espinas'),
            subtitle: Text('Musica por MissaSinfonia'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () {/*...*/},
                child: const Text('COMPRAR TICKETS'),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: () {/*...*/},
                child: const Text('ESCUCHAR'),
              ),
              const SizedBox(width: 8),
            ],
          )
        ],
      ),
    );
  }
}
