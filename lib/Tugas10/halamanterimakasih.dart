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
        backgroundColor: Color.fromARGB(255, 238, 197, 222),
        foregroundColor: Color.fromARGB(255, 0, 58, 68),
      ),
      backgroundColor: Color.fromARGB(255, 114, 227, 255),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),

              Text(
                "Terima kasih, $nama dari $kota telah mendaftar.",

                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 94, 34, 34),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "Dibuat oleh Aaliyah - Peserta PPKD Jakarta Pusat Batch 4",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 94, 34, 34),
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Text(
                "Versi 00000",
                style: TextStyle(
                  fontSize: 10,
                  color: Color.fromARGB(255, 94, 34, 34),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
