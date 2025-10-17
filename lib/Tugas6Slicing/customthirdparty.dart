import 'package:flutter/material.dart';

class CustomThirdParty extends StatelessWidget {
  const CustomThirdParty({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.5,
      width: 48,
      decoration: BoxDecoration(
        color: Color(0x60FFFFFF),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Color(0xffFFFFFF), width: 1),
      ),
      child: InkWell(
        splashColor: Color.fromARGB(255, 102, 216, 98),
        onTap: () {},
        child: Image.asset(imagePath, height: 18.0, width: 18),
      ),
    );
  }
}
