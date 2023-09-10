import 'package:flutter/material.dart';
import 'package:widgets_proyecto/pages/alert_dialog.dart';
import 'package:widgets_proyecto/pages/card_class.dart';
import 'package:widgets_proyecto/pages/check_box.dart';
import 'package:widgets_proyecto/pages/drawer.dart';
import 'package:widgets_proyecto/pages/list_view.dart';
import 'package:widgets_proyecto/pages/show_date_picker.dart';

class BNavigation extends StatefulWidget {
  const BNavigation({super.key});

  @override
  State<BNavigation> createState() => _BNavigationState();
}

class _BNavigationState extends State<BNavigation> {
  int _selecterIndex = 0;
  // ignore: unused_field
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Alert(), CheckBox()],
            ),
            CardC()
          ],
        ),
      ),
    ),
    DatePicker(),
    DrawerC(),
    ListV(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selecterIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets'),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: _widgetOptions.elementAt(_selecterIndex)),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Trabajo',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Escuela',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Ajustes',
              backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selecterIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped),
    );
  }
}
