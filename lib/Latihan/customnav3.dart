import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Latihan/halamanbaju.dart';
import 'package:ppkd_percobaan_1/Latihan/home_display.dart';
import 'package:ppkd_percobaan_1/Tugas2/scaffold2.dart';
import 'package:ppkd_percobaan_1/Tugas3/tugas4.dart';
import 'package:ppkd_percobaan_1/Tugas5/tugas5.dart';

class Customnav3 extends StatefulWidget {
  const Customnav3({super.key});

  @override
  State<Customnav3> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Customnav3> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    // Center(child: Text("Home")),
    home_display(),
    halamanBaju(),
    Tugas2(),
    Tugas4(),
    Tugas5(),
  ];
  void onTapDrawer(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomBarBubble(
        selectedIndex: _selectedIndex,
        items: [
          BottomBarItem(iconData: Icons.home),
          BottomBarItem(iconData: Icons.chat),
          BottomBarItem(iconData: Icons.notifications),
          BottomBarItem(iconData: Icons.calendar_month),
          BottomBarItem(iconData: Icons.settings),
        ],
        onSelect: (index) {
          print(index);
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
