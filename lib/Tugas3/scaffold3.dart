import 'package:flutter/material.dart';

class GridViewWidgetDay10 extends StatelessWidget {
  const GridViewWidgetDay10({super.key});

  @override
  Widget build(BuildContext context) {
    // Definisi Warna
    const Color primaryBlue = Color.fromARGB(255, 34, 49, 63); // Navy
    const Color lightPrimaryBlue = Color.fromARGB(
      255,
      66,
      94,
      119,
    ); // Light Navy
    const Color accentRed = Color.fromARGB(255, 192, 57, 43); // Deep Red
    const Color softPink = Color.fromARGB(255, 231, 189, 184); // Soft Pink
    const Color secondaryWhite = Color.fromARGB(
      255,
      236,
      240,
      241,
    ); // Off-white
    return Scaffold(
      appBar: AppBar(title: Text("Galeri Foto")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama"),
            TextField(
                      decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Nama Anda",
              ),
            ),
            Text("Email"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Email Anda",
              ),
            ),
            Text("No. Telepon"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Nomor Telepon Anda",
              ),
            ),
            Text("Deskripsi"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Deskripsi Diri Anda",
              ),
            ),
            const SizedBox(height: 20.0), 
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/images/539582.jpg",
                      fit: BoxFit.cover,
                    ),
                  ) 
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}