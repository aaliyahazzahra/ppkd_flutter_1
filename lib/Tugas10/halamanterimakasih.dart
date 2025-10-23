import 'package:flutter/material.dart';

class Halamanterimakasih extends StatelessWidget {
  const Halamanterimakasih({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Color(0xff780C28),
        foregroundColor: Color(0xffEAFAEA),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  "Terima kasih, [Nama] dari [Kota] telah mendaftar.",

                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  "Dibuat oleh Aaliyah - Peserta PPKD Jakarta Pusat Batch 4",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  "Versi 00000",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
