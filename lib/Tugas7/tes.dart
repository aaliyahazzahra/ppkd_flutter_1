import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Tugas7/01checkbox.dart';
import 'package:ppkd_percobaan_1/Tugas7/02switch.dart';
import 'package:ppkd_percobaan_1/Tugas7/03dropdown.dart';
import 'package:ppkd_percobaan_1/Tugas7/04tanggal.dart';
import 'package:ppkd_percobaan_1/Tugas7/05jam.dart';

void main() {
  runApp(const MaterialApp(home: CobaDrawer()));
}

class CobaDrawer extends StatefulWidget {
  const CobaDrawer({super.key});

  @override
  State<CobaDrawer> createState() => _CobaDrawerState();
}

class _CobaDrawerState extends State<CobaDrawer> {
  int _selectedIndex = 0;

  // DAFTAR WIDGET
  static const List<Widget> _widgetOptions = [
    HalamanCheckBox(),
    HalamanSwitch(),
    HalamanDropdown(),
    PilihTanggal(),
    PilihJam(),
  ];

  void onTapDrawer(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Tutup Drawer
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PRD"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Header Drawer (User Profile)
            const UserAccountsDrawerHeader(
              accountName: Text("Halo,"),
              accountEmail: Text("Jakarta Selatan"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/whiteCoat.jpg"),
                // child: Icon(Icons.person, size: 40, color: Colors.indigo),
              ),
              decoration: BoxDecoration(color: Colors.indigo),
            ),

            // // ITEM MENU 1
            // ListTile(
            //   selected: _selectedIndex == 0,
            //   onTap: () {
            //     onTapDrawer(0);
            //   },
            //   leading: const Icon(Icons.check_box),
            //   title: const Text("Syarat & Ketentuan"),
            // ),

            // const Divider(),

            // // ITEM MENU 2
            // ListTile(
            //   selected: _selectedIndex == 1,
            //   onTap: () {
            //     onTapDrawer(1);
            //   },
            //   leading: const Icon(Icons.sunny),
            //   title: const Text("Mode Gelap"),
            // ),

            // const Divider(),

            // // ITEM MENU 3
            // ListTile(
            //   selected: _selectedIndex == 2,
            //   onTap: () {
            //     onTapDrawer(2);
            //   },
            //   leading: const Icon(Icons.numbers),
            //   title: const Text("Pilih Kategori Produk"),
            // ),

            // const Divider(),

            // // ITEM MENU 4
            // ListTile(
            //   selected: _selectedIndex == 3,
            //   onTap: () {
            //     onTapDrawer(3);
            //   },
            //   leading: const Icon(Icons.date_range),
            //   title: const Text("Pilih Tanggal Lahir"),
            // ),

            // const Divider(),

            // // ITEM MENU 5
            // ListTile(
            //   selected: _selectedIndex == 4,
            //   onTap: () {
            //     onTapDrawer(4);
            //   },
            //   leading: const Icon(Icons.lock_clock),
            //   title: const Text("Pilih Waktu Pengingat"),
            // ),
            const Divider(),
          ],
        ),
      ),

      body: _widgetOptions[_selectedIndex],
    );
  }
}
