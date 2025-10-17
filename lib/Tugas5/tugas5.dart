import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _State1Day12State();
}

class _State1Day12State extends State<Tugas5> {
  bool showName = false;
  String myName = "@Raliyah27";
  bool showFav = false;
  String favorite = "Disukai";
  bool showShare = false;
  String share = "Bagikan";
  bool showSave = false;
  bool showDetil = false;
  String detil = "lengkap dah";
  bool showDetil2 = false;
  String detil2 = "lengkap dah";
  double counter = 0;

  @override
  Widget build(BuildContext context) {
    const Color softPink = Color.fromARGB(255, 231, 189, 184); // Soft Pink
    const String customFont = 'BeckyTahlia';
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "InstaMeter",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            fontFamily: customFont,
            color: softPink,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 20,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter--;
              setState(() {});
            },
            tooltip: "Kurangkan Nilai",
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              counter++;
              setState(() {});
            },
            tooltip: "Tambahkan Nilai",
            child: Icon(Icons.add),
          ),
        ],
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
                      border: Border.all(color: softPink, width: 5.0),
                    ),
                    child: const CircleAvatar(
                      radius: 30, // Ukuran lingkaran
                      backgroundImage: AssetImage('assets/images/orange.jpg'),
                    ),
                  ),
                  Spacer(),
                  if (showName) ...[
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
                      showName = !showName;
                      setState(() {});
                    },
                    child: Text(
                      showName ? "Sembunyikan nama" : "Tampilkan nama",
                    ),
                  ),
                ],
              ),

              // Jarak postingan dengan icon di bawah
              SizedBox(height: 8.0),

              // Gambar Postingan
              Image.asset("assets/images/539582.jpg"),

              // Ikon Favorite
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      showFav = !showFav;
                      setState(() {});
                    },
                    icon: Icon(
                      showFav ? Icons.favorite : Icons.favorite_border,
                      color: showFav ? Colors.red : Colors.grey,
                    ),
                  ),
                  Text(showFav ? "Disukai" : "Ga suka"),
                  IconButton(
                    onPressed: () {
                      showShare = !showShare;
                      setState(() {});
                    },
                    icon: Icon(
                      showShare ? Icons.check : Icons.share,
                      color: showShare ? Colors.red : Colors.grey,
                    ),
                  ),
                  Text(showShare ? "Bagikan" : "Ga bagikan"),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      showSave = !showSave;
                      setState(() {});
                    },
                    icon: Icon(
                      showSave ? Icons.save_alt : Icons.save_alt_rounded,
                      color: showSave ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),

              // Selengkapnya
              Text(
                showDetil
                    ? "Lorem ipsum dolor sit amet, consectetur adipiscing elit,..."
                    : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              ),
              TextButton(
                onPressed: () {
                  showDetil = !showDetil;
                  setState(() {});
                },
                child: Text("Lihat Selengkapnya"),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Tentukan Nilai",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      counter.toInt().toString(),
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              //Ink Well
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  splashColor: const Color.fromARGB(255, 102, 216, 98),
                  onTap: () {
                    showDetil2 = !showDetil2;
                    print("Kotak Disentuh");
                    setState(() {});
                  },
                  child: Text("Tekan disini"),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: softPink, // Background label
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  showDetil2
                      ? "Lorem ipsum dolor sit amet, consectetur adipiscing elit,..."
                      : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                ),
              ),

              //gesture doctor
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onLongPress: () {
                    print("Tekan Lama");
                  },
                  onDoubleTap: () {
                    print("Ditekan Dua Kali");
                  },
                  onTap: () {
                    print("Ditekan Sekali");
                  },
                  child: Text("Tekan Aku"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
