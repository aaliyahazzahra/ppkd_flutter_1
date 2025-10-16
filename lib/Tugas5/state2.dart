import 'package:flutter/material.dart';

class InkWellButtonDay12 extends StatelessWidget {
  const InkWellButtonDay12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inkwell Button")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              splashColor: Colors.green,
              onLongPress: () {
                print("Tekan lama");
              },
              onDoubleTap: () {
                print("Tekan dua kali");
              },
              onTap: () {
                print("Tekan sekali");
              },
              child: Text("Tekan disini"),
            ),
          ),
        ],
      ),
    );
  }
}
