import 'package:flutter/material.dart';
import 'package:widgets_proyecto/pages/AlertDialog.dart';
import 'package:widgets_proyecto/pages/BottomNavigationBar.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return BNavigation();
  }
}
