import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Tugas7/00HalamanHome.dart';
import 'package:ppkd_percobaan_1/Tugas8/profile.dart';

class CustomNav5 extends StatefulWidget {
  const CustomNav5({super.key});

  @override
  State<CustomNav5> createState() => _CustomNav5State();
}

class _CustomNav5State extends State<CustomNav5> {
  int _selectedIndex = 0;

  // HANYA 2 HALAMAN (Indeks 0 dan 1)
  static const List<Widget> _widgetOptions = [HalamanHome(), HalamanProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],

      bottomNavigationBar: BottomBarBubble(
        selectedIndex: _selectedIndex,

        // ITEM NAVIGASI
        items: [
          // Item 1
          BottomBarItem(
            iconBuilder: (color) => Icon(
              Icons.home_filled,
              color: const Color.fromARGB(255, 199, 181, 17),
            ),
            label: 'Home',
          ),

          // Item 2
          BottomBarItem(
            iconBuilder: (color) => Icon(
              Icons.person,
              color: const Color.fromARGB(255, 199, 181, 17),
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
