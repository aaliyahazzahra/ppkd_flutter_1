import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Latihan/halamanbaju.dart';
import 'package:ppkd_percobaan_1/Latihan/home_display.dart';
import 'package:ppkd_percobaan_1/Tugas6Slicing/tugas6.dart';

class BottomNavDay15 extends StatefulWidget {
  const BottomNavDay15({super.key});

  @override
  State<BottomNavDay15> createState() => _BottomNavDay15State();
}

class _BottomNavDay15State extends State<BottomNavDay15> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    // Center(child: Text("Home")),
    halamanBaju(),
    home_display(),
    TugasSlicing(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Bottom Navigation")),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          print(index);
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
