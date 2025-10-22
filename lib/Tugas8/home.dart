import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Tugas6Slicing/tugas6.dart';
import 'package:ppkd_percobaan_1/Tugas7/01checkbox.dart';
import 'package:ppkd_percobaan_1/Tugas7/02switch.dart';
import 'package:ppkd_percobaan_1/Tugas7/03dropdown.dart';

class CustomNav5 extends StatefulWidget {
  const CustomNav5({super.key});

  @override
  State<CustomNav5> createState() => _CustomNav5State();
}

class _CustomNav5State extends State<CustomNav5> {
  static const List<Widget> _widgetOptions = [
    // Center(child: Text("Home")),
    HalamanCheckBox(),
    HalamanDropdown(),
    HalamanSwitch(),
    TugasSlicing(),
    TugasSlicing(),
  ];
  void onTapDrawer(int index) {
    // setState(() {
    //   _selectedIndex = index;
    // });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomBarBubble(
        // selectedIndex: _index,
        items: [
          BottomBarItem(iconData: Icons.home),
          BottomBarItem(iconData: Icons.chat),
          BottomBarItem(iconData: Icons.notifications),
          BottomBarItem(iconData: Icons.calendar_month),
          BottomBarItem(iconData: Icons.settings),
        ],
        onSelect: (index) {
          // implement your select function here
          print(index);
          setState(() {
            // _selectedIndex = index;
          });
        },
      ),
    );
  }
}
