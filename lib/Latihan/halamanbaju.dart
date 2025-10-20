import 'package:flutter/material.dart';

class halamanBaju extends StatefulWidget {
  const halamanBaju({super.key});

  @override
  State<halamanBaju> createState() => _halamanBajuState();
}

class _halamanBajuState extends State<halamanBaju> {
  bool? showName = false;

  final String myName = "@Raliyah27";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Postingan Baju'),
        backgroundColor: Colors.white,
        // actions: [
        // IconButton(
        //   icon: const Icon(Icons.home, color: Colors.blue),
        //   // Panggil fungsi navigasi di sini
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => halamanBaju()),
        //     );
        //     // Navigator.pop(
        //     //   context,
        //     //   MaterialPageRoute(builder: (context) => Tugas1()),
        //     // );
        //   },
        // ),
        // ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(8),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Nama Tampil/Hilang
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 5.0),
                    ),
                    child: const CircleAvatar(
                      radius: 30, // Ukuran lingkaran
                      backgroundImage: AssetImage('assets/images/orange.jpg'),
                    ),
                  ),
                  Spacer(),
                  if (showName == false) ...[
                    Text(
                      myName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 20.0),
                  ] else ...[
                    SizedBox(width: 10),
                  ],
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showName = showName!;
                      });
                    },
                    child: Text(
                      showName == true ? "Sembunyikan nama" : "Tampilkan nama",
                    ),
                  ),
                ],
              ),

              // Jarak postingan dengan icon di bawah
              SizedBox(height: 8.0),

              // Gambar Postingan
              Image.asset("assets/images/whiteCoat.jpg"),
            ],
          ),
        ],
      ),
    );
  }
}
