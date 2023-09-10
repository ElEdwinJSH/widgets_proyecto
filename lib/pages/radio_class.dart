import 'package:flutter/material.dart';

class RadioI extends StatelessWidget {
  const RadioI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Radio'), backgroundColor: Colors.blue),
      body: const RadioC(),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class RadioC extends StatefulWidget {
  const RadioC({super.key});

  @override
  State<RadioC> createState() => _RadioCState();
}

class _RadioCState extends State<RadioC> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Lafayette'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Thomas Jefferson'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
