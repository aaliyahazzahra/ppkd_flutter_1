import 'package:flutter/material.dart';

class CustomThirdParty extends StatelessWidget {
  const CustomThirdParty({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 62.5,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Color(0xffEFF0F6), width: 1),
      ),
      child: InkWell(
        splashColor: Color.fromARGB(255, 102, 216, 98),
        onTap: () {
          print("aplikasi");
        },
        child: Image.asset(imagePath),
      ),
    );
  }
}
