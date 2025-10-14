import 'package:flutter/material.dart';

class TextFieldWidgetDay10 extends StatelessWidget {
  const TextFieldWidgetDay10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextField")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Nama Anda",
              ),
            ),
            Text("Email"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Password Anda",
              ),
            ),
            Text("Nomor Handphone"),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text("Deskripsi"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Nama Anda",
              ),
            ),
          ],
        ),
      ),
    );
  }
}