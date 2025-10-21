import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PilihTanggal extends StatefulWidget {
  const PilihTanggal({super.key});

  @override
  State<PilihTanggal> createState() => _PilihTanggalState();
}

class _PilihTanggalState extends State<PilihTanggal> {
  DateTime selectedPicked = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: Text("Pilih Tanggal"),
        ),
        Text(
          DateFormat('dd MMMM yyyy').format(selectedPicked),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
      ],
    );
  }
}
