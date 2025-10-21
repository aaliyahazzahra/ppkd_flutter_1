import 'package:flutter/material.dart';

class PilihJam extends StatefulWidget {
  const PilihJam({super.key});

  @override
  State<PilihJam> createState() => _PilihJamState();
}

class _PilihJamState extends State<PilihJam> {
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(selectedTime?.format(context) ?? "Silahkan Pilih Jam"),
        ElevatedButton(
          onPressed: () async {
            final TimeOfDay? picked = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
            if (picked != null) {
              print(picked);
              setState(() {
                selectedTime = picked;
              });
            }
          },
          child: Text("Pilih Jam"),
        ),
      ],
    );
  }
}
