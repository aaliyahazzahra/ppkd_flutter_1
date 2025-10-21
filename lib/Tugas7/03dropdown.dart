import 'package:flutter/material.dart';

class HalamanDropdown extends StatefulWidget {
  const HalamanDropdown({super.key});

  @override
  State<HalamanDropdown> createState() => _HalamanDropdownState();
}

class _HalamanDropdownState extends State<HalamanDropdown> {
  String? dropDownValue;
  final List<String> listProduk = [
    "Elektronik",
    "Pakaian",
    "Makanan",
    "Lainnya",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton(
          value: dropDownValue,
          items: listProduk.map((String val) {
            return DropdownMenuItem(
              value: val,
              child: Text(val, style: TextStyle(color: Colors.black)),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              dropDownValue = value;
            });
            print(dropDownValue);
          },
        ),
        Container(
          width: double.infinity,
          height: 100,
          color: dropDownValue == "Elektronik"
              ? Colors.red
              : dropDownValue == "Pakaian"
              ? const Color.fromARGB(255, 165, 175, 76)
              : dropDownValue == "Makanan"
              ? const Color.fromARGB(255, 244, 54, 158)
              : dropDownValue == "Lainnya"
              ? const Color.fromARGB(255, 54, 244, 171)
              : Colors.blue,
          child: Text("Anda memilih kategori $dropDownValue"),
        ),
      ],
    );
  }
}
