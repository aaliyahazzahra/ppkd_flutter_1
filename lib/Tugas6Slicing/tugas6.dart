import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Tugas6Slicing/customtextfield.dart';
import 'package:ppkd_percobaan_1/Tugas6Slicing/customthirdparty.dart';

class TugasSlicing extends StatefulWidget {
  const TugasSlicing({super.key});

  @override
  State<TugasSlicing> createState() => _TugasSlicingState();
}

class _TugasSlicingState extends State<TugasSlicing> {
  bool showFav = false;
  String favorite = "Disukai";
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
              color: Color(0x60FFFFFF),
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: Color(0xffFFFFFF), width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                spacing: 12,
                children: [
                  Image.asset("assets/images/Logo.png", height: 34.0),
                  const Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Enter your email and password to log in ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  CustomTextField(hintText: "Loisbecket@gmail.com"),
                  CustomTextField(hintText: "*******"),
                  Row(
                    children: [
                      Icon(Icons.square_outlined),
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
                      const Text(
                        "Remember me",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            print("ini buat lupa password  harusnya");
                          });
                        },
                        child: (Text("Forget Password ?")),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        print("ini udah login mestinya");
                      });
                    },
                    child: Text("Login"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 2,
                          // width: 100,
                          decoration: BoxDecoration(
                            color: Color(0x60FFFFFF),
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Color(0xffFFFFFF),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      const Text(
                        "or login with",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 2,
                          // width: 100,
                          decoration: BoxDecoration(
                            color: Color(0x60FFFFFF),
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Color(0xffFFFFFF),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Logo
                  Row(
                    spacing: 29,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomThirdParty(imagePath: "assets/images/google.png"),
                      CustomThirdParty(imagePath: "assets/images/Facebook.png"),
                      CustomThirdParty(imagePath: "assets/images/apple.png"),
                      CustomThirdParty(imagePath: "assets/images/device.png"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            print("ini buat daftar  harusnya");
                          });
                        },
                        child: (Text("Sign Up")),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
