import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Tugas10/halamanterimakasih.dart';

class Tugas10 extends StatefulWidget {
  const Tugas10({super.key});

  @override
  State<Tugas10> createState() => _Tugas10State();
}

class _Tugas10State extends State<Tugas10> {
  //DISINI KAN YA POSISINYA...
  @override
  void dispose() {
    emailController.dispose();
    namaController.dispose();
    hpController.dispose();
    kotaController.dispose();
    super.dispose();
  }

  void _tampilkanDialog() {
    // Menampilkan dialog
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Data'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terima kasih, ${namaController.text} dari ${kotaController.text} telah mendaftar.',
              ),
            ],
          ),
          actions: [
            TextButton(
              // Tombol untuk menutup dialog
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Halamanterimakasih(
                      nama: namaController.text,
                      email: emailController.text,
                      kota: kotaController.text,
                    ),
                  ),
                );
              },
              child: Text('Lanjut'),
            ),
          ],
        );
      },
    );
  }

  bool isFormValid = false;
  bool showRemember = false;
  String remember = "ingat";
  bool showPass = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final namaController = TextEditingController();
  final hpController = TextEditingController();
  final kotaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          //Wallpaper gradasi
          Image.asset(
            'assets/images/ungu.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Image.asset(
            'assets/images/kuning.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          //Background putih
          Container(
            height: 680,
            width: 343,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.60),
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: Color(0xffFFFFFF), width: 1),
            ),
            // Isian
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    Column(
                      spacing: 12,
                      children: [
                        Image.asset("assets/images/Logisim.png", height: 50.0),
                        const Text(
                          "SIGN UP",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            color: Color(0xff111827),
                          ),
                        ),
                        const Text(
                          "Enter your email and password to Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff6c7278),
                          ),
                        ),
                        SizedBox(height: 4),

                        //YAK MULAI SINI SAJA BERPIKIRNYA
                        // FORM NAMA
                        TextFormField(
                          controller: namaController,

                          decoration: InputDecoration(
                            labelText: 'Nama Lengkap',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Wajib diisi'; //  Gagal jika kosong
                            }
                            return null; //  Sukses jika terisi
                          },
                          onChanged: (value) {
                            setState(() {
                              // Cek status form saat ini dan simpan di variabel
                              isFormValid = _formKey.currentState!.validate();
                            });
                          },
                        ),
                        //FORM EMAIL
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(labelText: 'Email Aktif'),
                          validator: (value) {
                            // Memastikan form tidak kosong
                            if (value == null || value.isEmpty) {
                              return "Email tidak boleh kosong";
                            } else if (!RegExp(
                              // Memastikan format benar
                              r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$",
                            ).hasMatch(value)) {
                              return "Format Email tidak valid";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              // Cek status form saat ini dan simpan di variabel
                              isFormValid = _formKey.currentState!.validate();
                            });
                          },
                        ),
                        // FORM NOMOR HP
                        TextFormField(
                          controller: hpController,
                          decoration: InputDecoration(labelText: 'Nomor HP'),
                          validator: (value) {
                            if (value != null && value.isNotEmpty) {
                              // Memastikan form tidak kosong
                              if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                                //Memastikan semua angka
                                return 'Nomor HP harus berupa angka'; // Gagal jika format salah
                              }
                            }
                            return null; // Sukses jika form kosong atau sesuai format
                          },
                          onChanged: (value) {
                            setState(() {
                              // Cek status form saat ini dan simpan di variabel
                              isFormValid = _formKey.currentState!.validate();
                            });
                          },
                        ),
                        // FORM KOTA
                        TextFormField(
                          controller: kotaController,
                          decoration: InputDecoration(labelText: 'Kota'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Wajib diisi'; //  Gagal jika kosong
                            }
                            return null; //  Sukses jika terisi
                          },
                          onChanged: (value) {
                            setState(() {
                              // Cek status form saat ini dan simpan di variabel
                              isFormValid = _formKey.currentState!.validate();
                            });
                          },
                        ),

                        //Tombol Daftar
                        SizedBox(
                          height: 50,
                          width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isFormValid
                                  ? Color(0xff6E8E59)
                                  : Colors.grey.shade400,
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              foregroundColor: Colors.white,
                            ),
                            onPressed: isFormValid
                                ? () {
                                    _tampilkanDialog();
                                  }
                                : null, // menonaktifkan tombol
                            child: Text(
                              'DAFTAR',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
