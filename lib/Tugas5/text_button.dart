import 'package:flutter/material.dart';

class State1Day12 extends StatefulWidget {
  const State1Day12({super.key});

  @override
  State<State1Day12> createState() => _State1Day12State();
}

class _State1Day12State extends State<State1Day12> {
  double counter = 0; // bisa double, bisa int
  @override
  Widget build(BuildContext context) {
    print("Refresh nilai counter");
    return Scaffold(
      appBar: AppBar(title: Text("State 1 Counter")),
      body: Column(
        children: [
          Text("Tambah tambah", style: TextStyle(fontSize: 30)),
          Text(
            counter.toStringAsFixed(3),
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Print tambah $counter");
                  counter /= 2.5;
                  setState(() {});
                },
                child: Text("Bagi 2.5"),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Print tambah $counter");
                  counter--;
                  setState(() {});
                },
                child: Text("Kurang"),
              ),
              SizedBox(width: 24),
              ElevatedButton(
                onPressed: () {
                  print("Print tambah $counter");
                  counter++;
                  setState(() {});
                },
                child: Text("Tambah"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}