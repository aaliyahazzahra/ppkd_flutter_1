import 'package:flutter/material.dart';

class Halamanterimakasih extends StatelessWidget {
  final String nama;
  final String email;
  final String kota;

  const Halamanterimakasih({
    super.key,
    required this.nama,
    required this.email,
    required this.kota,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        foregroundColor: Color.fromARGB(255, 126, 255, 126),
      ),
      backgroundColor: Color(0xff2c2c2c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Terima kasih, $nama dari $kota telah mendaftar.",

              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 228, 10, 10),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "Dibuat oleh Aaliyah - Peserta PPKD Jakarta Pusat Batch 4",
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 197, 27, 27),
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Text(
              "Versi 00000",
              style: TextStyle(
                fontSize: 10,
                color: Color.fromARGB(255, 187, 19, 19),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
