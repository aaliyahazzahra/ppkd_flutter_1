import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Latihan/login.dart';
import 'package:ppkd_percobaan_1/Tugas11/login_screen.dart';
import 'package:ppkd_percobaan_1/Tugas7/00HalamanHome.dart';
import 'package:ppkd_percobaan_1/constant/app_image.dart';
import 'package:ppkd_percobaan_1/preferences/preferences_handler.dart';

class SplashScreenDay18 extends StatefulWidget {
  const SplashScreenDay18({super.key});

  @override
  State<SplashScreenDay18> createState() => _SplashScreenDay18State();
}

class _SplashScreenDay18State extends State<SplashScreenDay18> {
  @override
  void initState() {
    super.initState();
    isLoginFunction();
  }

  isLoginFunction() async {
    Future.delayed(Duration(seconds: 5)).then((value) async {
      var isLogin = await PreferenceHandler.getLogin();
      print(isLogin);
      if (isLogin != null && isLogin == true) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HalamanHome()),
          (route) => false,
        );
      } else {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginScreenDay18()),
          (route) => false,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset(AppImages.logisim)),
          // Text(
          //   "Apel Apps",
          //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          // ),
        ],
      ),
    );
  }
}
