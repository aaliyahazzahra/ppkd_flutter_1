import 'package:flutter/material.dart';

class ScaffoldWidgetDay8 extends StatelessWidget {
  const ScaffoldWidgetDay8({super.key});

  @override
  Widget build(BuildContext context) {
    // Definisi Warna
    const Color primaryBlue = Color.fromARGB(255, 34, 49, 63); // Navy
    const Color lightPrimaryBlue = Color.fromARGB(255, 66, 94, 119); // Light Navy
    const Color accentRed = Color.fromARGB(255, 192, 57, 43); // Deep Red
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),     // Warna Background
      appBar: AppBar(
        title: const Text("Profil Saya", style: TextStyle(color: Colors.white)), // Warna Font App Bar
        backgroundColor: primaryBlue, // Warna App Bar
      ),
      body: Column(
        // Agar semua posisi di tengah
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Halo, nama saya",
            style: TextStyle(
              fontSize: 20,
              color: lightPrimaryBlue, // Warna Font
            ),
          ),
          Text(
            "Aaliyah R. 'A. Azzahra",
            style: TextStyle(
              fontSize: 30,
              color: accentRed, // Warna Font
              fontWeight: FontWeight.bold, // Tebal
            ),
          ),
          Row(
           // Agar semua posisi di tengah
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on, // Memunculkan Ikon
                size: 30, // Ukuran Ikon
                color: accentRed, // Warna Ikon
              ), 
              Text(
                "Jakarta Selatan",
                style: TextStyle(
                  fontSize: 20, // Ukuran Font
                  fontWeight: FontWeight.bold, // Tebal
                  color: accentRed, // Warna Font
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 8.0), // Padding disekitar teks
            child: Text(
              "Saya seorang fresh graduate dari Universitas Negeri Jakarta prodi Pendidikan Teknik Elektro yang sedang belajar flutter di PPKD",
              textAlign: TextAlign.center, // Rata tengah
              style: TextStyle(
                fontSize: 14, // Ukuran Font
                color: primaryBlue, // Warna Font
                decoration: TextDecoration.underline, // Memberikan Underline
                decorationColor: accentRed, // Warna Underline Font
              ),
            ),
          ),
        ],
      ),
    );
  }
}
