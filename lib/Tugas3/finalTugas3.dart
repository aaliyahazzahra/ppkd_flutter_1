import 'package:flutter/material.dart';

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});
 
  @override
  Widget build(BuildContext context) {
    const Color midBlue = Color.fromARGB(255, 39, 100, 156); // Navy
    const Color secondaryWhite = Color.fromARGB(255, 204, 233, 240); // Putih

    return Scaffold(
      appBar: AppBar(
        title: const Text("Galeri Foto"),
        backgroundColor: midBlue,
        foregroundColor: secondaryWhite,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // --- Formulir Pengguna ---
            // Nama
            const Text("Nama", style: TextStyle(fontWeight: FontWeight.bold)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Nama Anda",
              ),
            ),
            const SizedBox(height: 16.0),
            // Email
            const Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Email Anda",
              ),
            ),
            const SizedBox(height: 16.0),
            // No. Telp
            const Text("No. Telepon", style: TextStyle(fontWeight: FontWeight.bold)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Nomor Telepon Anda",
              ),
            ),
            const SizedBox(height: 16.0),
            // Deskripsi
            const Text("Deskripsi", style: TextStyle(fontWeight: FontWeight.bold)),
            const TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Deskripsi Diri Anda",
              ),
            ),
            const SizedBox(height: 30.0),
      
            // --- Grid ---
            //Judul
            Text(
              "Galeri",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: midBlue,
              ),
            ),
            const SizedBox(height: 15.0),
      
            GridView.count( 
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2, 
              crossAxisSpacing: 12, 
              mainAxisSpacing: 12, 
              children: List.generate(6, // Total 6 item
                (index) => buildTaskGridItem(index), 
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildTaskGridItem(int index) {
    final List<Color> gridColors = const [
      Color(0xFFE74C3C), // Merah
      Color(0xFF2ECC71), // Hijau
      Color(0xFF3498DB), // Biru
      Color(0xFFF1C40F), // Kuning
      Color(0xFF9B59B6), // Ungu
      Color(0xFF1ABC9C), // Cyan
    ];
    final Color color = gridColors[index];
    final String label = "Warna ${index + 1}";
    // Lapisan 1: Warna
    return ClipRRect(
      borderRadius: BorderRadius.circular(20), 
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
          ),
          // Lapisan 2: Text
          Center( 
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
