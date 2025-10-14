import 'package:flutter/material.dart';

class Tugas2 extends StatelessWidget {
  const Tugas2({super.key});

  @override
  Widget build(BuildContext context) {
    // Definisi Warna
    const Color primaryBlue = Color.fromARGB(255, 34, 49, 63); // Navy
    const Color lightPrimaryBlue = Color.fromARGB(255, 66, 94, 119); // Light Navy 
    const Color accentRed = Color.fromARGB(255, 192, 57, 43); // Deep Red
        const Color softPink = Color.fromARGB(255, 231, 189, 184); // Soft Pink
    const Color secondaryWhite = Color.fromARGB(255, 236, 240, 241); // Off-white
    // Definisi Font
    const String customFont = 'BeckyTahlia';
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),     // Warna Background
      appBar: AppBar(
        title: const Text("Profil Lengkap", style: TextStyle(color: Colors.white)), // Warna Font App Bar
        backgroundColor: lightPrimaryBlue, // Warna App Bar
      actions: [
        const Icon(
              Icons.menu, // Ikon menu
              color: Colors.white,
            ),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        // Agar semua posisi di tengah
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // --- FOTO PROFIL---
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: softPink, width: 5.0
              )
            ),
            child: const CircleAvatar(
              radius: 60, // Ukuran lingkaran
              backgroundImage: AssetImage('assets/images/aaliyah_pp.jpg'), 
            ),
          ),
          const SizedBox(height: 30.0), // Jarak antara foto profil dan nama
          // --- Baris 1: Nama---
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
              fontFamily: customFont, // Ganti jenis font
            ),
          ),
          // --- Baris 2: Email---
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFFE0E0E0), width: 1.0),
                ),
              ),
              child: Row(
                 // Agar semua posisi di tengah
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.mark_email_read_outlined, color:  primaryBlue),
                  SizedBox(width: 15),
                  Text(
                    "aaliyahazzahra02@gmail.com",
                    style: TextStyle(
                      fontSize: 16,
                      color:  primaryBlue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // --- Baris 3: Nomor Telepon---
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                const Icon(Icons.phone_android, color: primaryBlue),
                const SizedBox(width: 15),
                const Text(
                  "0857-7906-7337",
                  style: TextStyle(fontSize: 16, color: primaryBlue),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                  color: softPink, // Background label
                  borderRadius: BorderRadius.circular(5)),
                  child: Text("Kontak Utama",
                  style: TextStyle(fontSize: 16, color: primaryBlue, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0), 
          // --- Baris 4: Statistik---
          Row(
            children: [
              // Kotak Postingan
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 7.5),
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  decoration: BoxDecoration(
                    color: primaryBlue, // Warna kotak
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
                  ),
                  child: Column(
                    children: const [
                      Text("145", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: secondaryWhite)), // Warna Font
                      Text("Postingan", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: accentRed)),
                    ],
                  ),
                ),
              ),
              // Kotak Followers
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 7.5, right: 10),
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  decoration: BoxDecoration(
                    color: primaryBlue, // Warna kotak
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
                  ),
                  child: Column(
                    children: const [
                      Text("2.5K", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: secondaryWhite)),
                      Text("Followers", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: accentRed)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // --- Baris 5:Deskripsi Profil ---
          const SizedBox(height: 25.0), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0), // Padding Horizontal
            child: const Text(
              "Fresh graduate dari Universitas Negeri Jakarta prodi Pendidikan Teknik Elektro. Saat ini fokus mendalami Flutter.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: primaryBlue,
                height: 1.5, // Jarak antar baris
              ),
            ),
          ),
          // --- Baris 6: Hiasan---
          const SizedBox(height: 30.0), 
          Container(
            height: 60.0,
            color: lightPrimaryBlue, 
            alignment: Alignment.center,
            child: const Text(
              "Let's Connect",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      )
    );
  }
}
