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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController =
      TextEditingController(); // Agregamos un controlador para obtener el valor del campo

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller:
                _emailController, // Asociamos el controlador al TextFormField
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Procesar los datos
                  final emailValue = _emailController
                      .text; // Obtener el valor del campo de correo electrónico
                  debugPrint(
                      'Email ingresado: $emailValue'); // Imprimir el valor del correo electrónico
                }
              },
              child: const Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }
}
