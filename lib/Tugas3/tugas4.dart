import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    // Definisi Font
    const String customFont = 'BeckyTahlia';
    // Definisi Warna
    const Color accentRed = Color.fromARGB(255, 192, 57, 43);

    return Scaffold(
      appBar: AppBar(title: 
        const Text("Arsyan Shop", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, fontFamily:customFont)),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(8),
        children: [
          // --- Formulir Pengguna ---
          const Text("Nama", style: TextStyle(fontWeight: FontWeight.bold)),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Masukkan Nama Anda",
            ),
          ),
          const SizedBox(height: 16.0),
          const Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Masukkan Email Anda",
            ),
          ),
          const SizedBox(height: 16.0),
          const Text("No. Telepon", style: TextStyle(fontWeight: FontWeight.bold)),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Masukkan Nomor Telepon Anda",
              ),
            ),
          const SizedBox(height: 16.0),      
          const Text("Deskripsi", style: TextStyle(fontWeight: FontWeight.bold)),
          const TextField(
            maxLines: 3,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Masukkan Deskripsi Diri Anda",
            ),
          ),
          const SizedBox(height: 30.0),
          Row(
            children: [
              const Text("Flash Sale", 
                style: TextStyle(
                  fontSize: 22, 
                  color: accentRed, 
                  fontWeight: FontWeight.bold, 
                  decoration: TextDecoration.underline, 
                  decorationColor: accentRed
                ),
              ),
              Icon(Icons.flash_on_outlined, color: const Color.fromARGB(255, 199, 181, 17),),
            ],
            
          ),
          
          // --- Data Barang ---
          // Baju 1
          ListTile(
            leading: Image.asset("assets/images/whiteCoat.jpg"),
            title: Text("Diana Coat",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: const [
                  Text("Warna: Putih", style: TextStyle(fontSize: 12)),
                  Text("Rp 505.000,00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ],
              ),
            ),
            trailing: Icon(Icons.shopping_bag_outlined),
          ),
          // Baju 2
          ListTile(
            leading: Image.asset("assets/images/babyBlueCoat.jpg"),
            title: Text("Audrey Coat",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: const [
                  Text("Warna: Baby Blue", style: TextStyle(fontSize: 12)),
                  Text("Rp 520.000,00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ],
              ),
            ),
            trailing: Icon(Icons.shopping_bag_outlined),
          ),
          // Baju 3
          ListTile(
            leading: Image.asset("assets/images/redCoat.jpg"),
            title: Text("Niskala Coat",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: const [
                  Text("Warna: Merah", style: TextStyle(fontSize: 12)),
                  Text("Rp 503.000,00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ],
              ),
            ),
            trailing: Icon(Icons.shopping_bag_outlined),
          ),
          // Baju 4
          ListTile(
            leading: Image.asset("assets/images/greenCoat.jpg"),
            title: Text("Saphire Coat",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: const [
                  Text("Warna: Hijau", style: TextStyle(fontSize: 12)),
                  Text("Rp 510.000,00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ],
              ),
            ),
            trailing: Icon(Icons.shopping_bag_outlined),
          ),
          // Baju 5
          ListTile(
            leading: Image.asset("assets/images/blackCoat.jpg"),
            title: Text("Emilia Coat",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: const [
                  Text("Warna: Hitam", style: TextStyle(fontSize: 12)),
                  Text("Rp 500.000,00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ],
              ),
            ),
            trailing: Icon(Icons.shopping_bag_outlined),
          ),
        ],
      ),
    );
  }
}