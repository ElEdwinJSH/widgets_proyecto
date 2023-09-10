import 'package:flutter/material.dart';

class FormFi extends StatelessWidget {
  const FormFi({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Field'),
        backgroundColor: Colors.blue,
      ),
      body: const FormF(),
    );
  }
}

class FormF extends StatefulWidget {
  const FormF({Key? key});

  @override
  State<FormF> createState() => _FormFState();
}

class _FormFState extends State<FormF> {
  final TextEditingController _textController = TextEditingController();
  String _errorMessage = ''; // Agregamos una variable para el mensaje de error

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _textController,
            decoration: InputDecoration(
              labelText: 'Ingrese su nombre',
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Verificar si el campo de texto está vacío
              if (_textController.text.isEmpty) {
                setState(() {
                  _errorMessage = 'Escriba texto';
                });
              } else {
                // Acción a realizar cuando se presiona el botón
                final enteredText = _textController.text;
                showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: Text('Texto Ingresado'),
                      content: Text('Has ingresado: $enteredText'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Cerrar'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
            child: Text('Mostrar Texto'),
          ),
          // Mostrar el mensaje de error
          Text(
            _errorMessage,
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
