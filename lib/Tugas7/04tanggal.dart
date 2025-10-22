import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PilihTanggal extends StatefulWidget {
  const PilihTanggal({super.key});

  @override
  State<PilihTanggal> createState() => _PilihTanggalState();
}

class _PilihTanggalState extends State<PilihTanggal> {
  DateTime selectedPicked = DateTime.now();
  String get birthDate {
    // Memformat tanggal yang dipilih
    final formattedDate = DateFormat('dd MMMM yyyy').format(selectedPicked);

    // Menggabungkan string statis
    return "Tanggal Lahir: $formattedDate.";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              if (picked != null) {
                print(picked);
                setState(() {
                  selectedPicked = picked;
                });
              }
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 5,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              foregroundColor: Color(0xffEAFAEA),
              backgroundColor: Color(0xff6E8E59),
            ),
            child: Text("Pilih Tanggal Lahir"),
          ),
          SizedBox(height: 20),
          Text(
            // Menggunakan getter birthDate yang sudah diformat
            birthDate,

            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff6E8E59),
            ),
          ),
        ],
      ),
    );
  }
}
