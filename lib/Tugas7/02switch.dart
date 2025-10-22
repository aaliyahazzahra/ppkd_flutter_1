import 'package:flutter/material.dart';

class HalamanSwitch extends StatefulWidget {
  const HalamanSwitch({super.key});

  @override
  State<HalamanSwitch> createState() => _HalamanSwitchState();
}

class _HalamanSwitchState extends State<HalamanSwitch> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Aktifkan Mode Gelap"),
        Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },
        ),
        Text(isSwitched ? "Mode Gelap Aktif" : "Mode Terang Aktif"),
        Expanded(
          child: Container(
            width: double.infinity,
            color: isSwitched ? Colors.black87 : Color(0xffCAE0BC),
          ),
        ),
      ],
    );
  }
}
