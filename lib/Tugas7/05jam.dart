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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            selectedTime?.format(context) ?? "Silahkan Pilih Jam",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Color(0xff6E8E59),
            ),
          ),
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
            child: Text(
              "Pilih Jam",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xffEAFAEA),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
