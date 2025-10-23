import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Latihan/customnav3.dart';
import 'package:ppkd_percobaan_1/Tugas6Slicing/customtextfield.dart';
import 'package:ppkd_percobaan_1/Tugas6Slicing/customthirdparty.dart';

class Tugas10 extends StatefulWidget {
  const Tugas10({super.key});

  @override
  State<Tugas10> createState() => _Tugas10State();
}

class _Tugas10State extends State<Tugas10> {
  //DISINI KAN YA POSISINYA...
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void _tampilkanDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(title: Text("SIGN UP"));
      },
    );
  }

  bool isFormValid = false;
  bool showRemember = false;
  String remember = "ingat";
  bool showPass = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
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
            height: 561,
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
                        Row(
                          spacing: 5,
                          children: [
                            Image.asset(
                              "assets/images/Logosim.png",
                              height: 34.0,
                            ),
                            const Text(
                              "SIGN UP",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 32,
                                color: Color(0xff111827),
                              ),
                            ),
                          ],
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
                          controller: emailController,
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
                        SizedBox(height: 10),
                        //Tombol Daftar
                        ElevatedButton(
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
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Pendaftaran diproses'),
                                    ),
                                  );
                                }
                              : null, // menonaktifkan tombol
                          child: Text('DAFTAR', style: TextStyle(fontSize: 18)),
                        ),

                        // CustomTextField(
                        //   hintText: "*******",
                        //   isVisibility: false,
                        //   click: () {
                        //     setState(() {
                        //       showPass = !showPass;
                        //     });
                        //   },
                        //   securePass: showPass,
                        // ),

                        // Row(
                        //   children: [
                        //     SizedBox(
                        //       width: 24,
                        //       height: 24,
                        //       child: Checkbox(
                        //         value: showRemember,
                        //         onChanged: (bool? value) {
                        //           setState(() {
                        //             showRemember = value!;
                        //             print("Remember me status: $showRemember");
                        //           });
                        //         },
                        //         activeColor: Colors.blue,
                        //       ),
                        //     ),
                        //     GestureDetector(
                        //       onTap: () {
                        //         setState(() {
                        //           showRemember = !showRemember;
                        //           print("Remember me status: $showRemember");
                        //         });
                        //       },
                        //       child: const Text(
                        //         "Remember me",
                        //         style: TextStyle(
                        //           fontSize: 12,
                        //           color: Color(0xff6C7278),
                        //           fontWeight: FontWeight.w500,
                        //         ),
                        //       ),
                        //     ),
                        //     const Spacer(),
                        //     GestureDetector(
                        //       onTap: () {
                        //         setState(() {
                        //           print("ini buat lupa password  harusnya");
                        //         });
                        //       },
                        //       child: (Text(
                        //         "Forgot Password ?",
                        //         style: TextStyle(
                        //           fontSize: 12,
                        //           color: Color(0xff4D81E7),
                        //           fontWeight: FontWeight.w600,
                        //         ),
                        //       )),
                        //     ),
                        //   ],
                        // ),
                        // SizedBox(height: 0.2),
                        // SizedBox(
                        //   width: double.infinity,
                        //   height: 48,
                        //   child: ElevatedButton(
                        //     onPressed: () {
                        //       // Navigator.pop(context);
                        //       Navigator.pushReplacement(
                        //         context,
                        //         MaterialPageRoute(builder: (context) => NavLucu()),
                        //       );
                        //       setState(() {
                        //         print("ini udah login mestinya");
                        //       });
                        //     },
                        //     style: ElevatedButton.styleFrom(
                        //       shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(12.0),
                        //       ),
                        //       elevation: 5,
                        //       padding: const EdgeInsets.symmetric(
                        //         horizontal: 20.0,
                        //         vertical: 10.0,
                        //       ),
                        //       foregroundColor: Colors.white,
                        //       backgroundColor: Color(0xff1D61E7),
                        //     ),
                        //     child: Text("Log In"),
                        //   ),
                        // ),
                        // SizedBox(height: 0.2),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Expanded(
                        //       child: Container(
                        //         height: 2,
                        //         width: 100,
                        //         decoration: BoxDecoration(
                        //           color: Color(0x60FFFFFF),
                        //           borderRadius: BorderRadius.circular(12.0),
                        //           border: Border.all(
                        //             color: Color(0xffFFFFFF),
                        //             width: 1,
                        //           ),
                        //         ),
                        //       ),
                        //     ),

                        //     SizedBox(width: 10),
                        //     const Text(
                        //       "Or login with",
                        //       style: TextStyle(
                        //         fontSize: 12,
                        //         fontWeight: FontWeight.w400,
                        //       ),
                        //     ),
                        //     SizedBox(width: 10),
                        //     Expanded(
                        //       child: Container(
                        //         height: 2,
                        //         width: 100,
                        //         decoration: BoxDecoration(
                        //           color: Color.fromARGB(95, 255, 255, 255),
                        //           borderRadius: BorderRadius.circular(12.0),
                        //           border: Border.all(
                        //             color: Color(0xffFFFFFF),
                        //             width: 1,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // SizedBox(height: 0.2),

                        //YAK SAMPAI SINI SAJA BERPIKIRNYA

                        //Logo
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   spacing: 12,
                        //   children: [
                        //     CustomThirdParty(imagePath: "assets/images/google.png"),
                        //     CustomThirdParty(imagePath: "assets/images/Facebook.png"),
                        //     CustomThirdParty(imagePath: "assets/images/apple.png"),
                        //     CustomThirdParty(imagePath: "assets/images/device.png"),
                        //   ],
                        // ),

                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     const Text(
                        //       "Don't have an account?",
                        //       style: TextStyle(
                        //         fontSize: 12,
                        //         fontWeight: FontWeight.w500,
                        //       ),
                        //     ),
                        //     SizedBox(width: 10),
                        //     GestureDetector(
                        //       onTap: () {
                        //         setState(() {
                        //           print("ini buat daftar  harusnya");
                        //         });
                        //       },
                        //       child: (Text(
                        //         "Sign Up",
                        //         style: TextStyle(
                        //           fontSize: 12,
                        //           color: Color(0xff4D81E7),
                        //           fontWeight: FontWeight.w600,
                        //         ),
                        //       )),
                        //     ),
                        //   ],
                        // ),
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
