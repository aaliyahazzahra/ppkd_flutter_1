import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Tugas9/list.dart';
import 'package:ppkd_percobaan_1/Tugas9/list_map.dart';
import 'package:ppkd_percobaan_1/Tugas9/model.dart';

class Tugas9 extends StatefulWidget {
  const Tugas9({super.key});

  @override
  State<Tugas9> createState() => _Tugas9State();
}

class _Tugas9State extends State<Tugas9> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    TugasList(),
    TugasListView(),
    TugasModel(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tugas 9",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Color.fromARGB(255, 17, 20, 199),
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: _widgetOptions[_selectedIndex],

      bottomNavigationBar: BottomBarBubble(
        selectedIndex: _selectedIndex,

        // ITEM NAVIGASI
        items: [
          // Item 1
          BottomBarItem(
            iconBuilder: (color) =>
                Icon(Icons.list, color: const Color.fromARGB(255, 17, 20, 199)),
            label: 'Home',
          ),

          // Item 2
          BottomBarItem(
            iconBuilder: (color) =>
                Icon(Icons.map, color: const Color.fromARGB(255, 17, 20, 199)),
            label: 'About',
          ),
          // Item 2
          BottomBarItem(
            iconBuilder: (color) => Icon(
              Icons.model_training,
              color: const Color.fromARGB(255, 17, 20, 199),
            ),
            label: 'About',
          ),
        ],
        onSelect: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
