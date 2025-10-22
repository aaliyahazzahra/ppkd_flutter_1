import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HalamanCheckBox()));
}

class HalamanCheckBox extends StatefulWidget {
  const HalamanCheckBox({super.key});

  @override
  State<HalamanCheckBox> createState() => _HalamanCheckBoxState();
}

class _HalamanCheckBoxState extends State<HalamanCheckBox> {
  // Variabel
  bool isChecked = false;
  bool isShower = false;
  bool isBreakfast = false;
  bool isHappy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // --- CHECKBOX
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.teal.shade200),
              ),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      print("Checkbox Setuju diubah: $value");
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    activeColor: Colors.teal,
                  ),
                  Expanded(
                    child: Text(
                      "Saya menyetujui semua persyaratan yang berlaku",

                      style: TextStyle(
                        fontWeight: isChecked
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: isChecked
                            ? Colors.teal.shade700
                            : Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // --- ELEVATED BUTTON
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isChecked
                    ? Color(0xff6E8E59)
                    : Colors.grey.shade400,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                foregroundColor: Colors.white,
              ),
              onPressed: isChecked
                  ? () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Login berhasil! Tombol aktif.'),
                        ),
                      );
                    }
                  : null, // menonaktifkan tombol
              child: Text(
                isChecked
                    ? "Lanjutkan pendaftaran diperbolehkan"
                    : "Anda belum bisa melanjutkan",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
