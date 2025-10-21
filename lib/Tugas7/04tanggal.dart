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
            child: Text("Pilih Tanggal Lahir"),
          ),
          Text(
            // Menggunakan getter birthDate yang sudah diformat
            birthDate,

            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.pink.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
