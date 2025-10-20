import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Latihan/customnav3.dart';
import 'package:ppkd_percobaan_1/Tugas6Slicing/customtextfield.dart';
import 'package:ppkd_percobaan_1/Tugas6Slicing/customthirdparty.dart';

class TugasSlicing extends StatefulWidget {
  const TugasSlicing({super.key});

  @override
  State<TugasSlicing> createState() => _TugasSlicingState();
}

class _TugasSlicingState extends State<TugasSlicing> {
  bool showRemember = false;
  String remember = "ingat";
  bool showPass = false;

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
            child: Padding(
              padding: const EdgeInsets.all(24.0),

              child: Column(
                spacing: 12,
                children: [
                  Image.asset("assets/images/Logo.png", height: 34.0),
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      color: Color(0xff111827),
                    ),
                  ),
                  const Text(
                    "Enter your email and password to log in ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xff6c7278),
                    ),
                  ),
                  SizedBox(height: 4),

                  CustomTextField(hintText: "Loisbecket@gmail.com"),
                  CustomTextField(
                    hintText: "*******",
                    isVisibility: false,
                    click: () {
                      setState(() {
                        showPass = !showPass;
                      });
                    },
                    securePass: showPass,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(
                          value: showRemember,
                          onChanged: (bool? value) {
                            setState(() {
                              showRemember = value!;
                              print("Remember me status: $showRemember");
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showRemember = !showRemember;
                            print("Remember me status: $showRemember");
                          });
                        },
                        child: const Text(
                          "Remember me",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff6C7278),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            print("ini buat lupa password  harusnya");
                          });
                        },
                        child: (Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff4D81E7),
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(height: 0.2),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pop(context);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Customnav3()),
                        );
                        setState(() {
                          print("ini udah login mestinya");
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        elevation: 5,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xff1D61E7),
                      ),
                      child: Text("Log In"),
                    ),
                  ),
                  SizedBox(height: 0.2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 2,
                          width: 100,
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
                        "Or login with",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 2,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(95, 255, 255, 255),
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
                  SizedBox(height: 0.2),

                  //Logo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 12,
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
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            print("ini buat daftar  harusnya");
                          });
                        },
                        child: (Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff4D81E7),
                            fontWeight: FontWeight.w600,
                          ),
                        )),
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
