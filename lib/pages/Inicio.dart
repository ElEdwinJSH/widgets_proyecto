import 'package:flutter/material.dart';
import 'package:widgets_proyecto/pages/bottom_navigation_bar.dart';

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
