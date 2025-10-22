import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Extension/rupiah.dart';
import 'package:ppkd_percobaan_1/Model/model.dart';
import 'package:ppkd_percobaan_1/constant/app_image.dart';

class TugasModel extends StatefulWidget {
  const TugasModel({super.key});

  @override
  State<TugasModel> createState() => _TugasModelState();
}

class _TugasModelState extends State<TugasModel> {
  final List<BuahModel> namaBuah = [
    BuahModel(
      name: "Anggur",
      condition: "Segar",
      image: AppImages.anggur,
      price: 1000,
    ),
    BuahModel(
      name: "Ceri",
      condition: "Segar",
      image: AppImages.ceri,
      price: 2000,
    ),
    BuahModel(
      name: "Kelapa",
      condition: "Segar",
      image: AppImages.kelapa,
      price: 3000,
    ),
    BuahModel(
      name: "Kiwi",
      condition: "Segar",
      image: AppImages.kiwi,
      price: 4000,
    ),
    BuahModel(
      name: "Melon",
      condition: "Segar",
      image: AppImages.melon,
      price: 5000,
    ),
    BuahModel(
      name: "Nanas",
      condition: "Segar",
      image: AppImages.nanas,
      price: 6000,
    ),
    BuahModel(
      name: "Pepaya",
      condition: "Segar",
      image: AppImages.pepaya,
      price: 7000,
    ),
    BuahModel(
      name: "Pir",
      condition: "Segar",
      image: AppImages.pir,
      price: 8000,
    ),
    BuahModel(
      name: "Pisang",
      condition: "Segar",
      image: AppImages.pisang,
      price: 9000,
    ),
    BuahModel(
      name: "Salak",
      condition: "Segar",
      image: AppImages.salak,
      price: 10000,
    ),
    BuahModel(
      name: "Tebak apa",
      condition: "Bagus pokoknya",
      image: AppImages.bonus,
      price: 10000000,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: namaBuah.length,
      itemBuilder: (BuildContext context, int index) {
        final item = namaBuah[index];
        return ListTile(
          tileColor: item.backgroundColor,
          leading: Image.asset(item.image, width: 60),
          title: Text(item.name),
          subtitle: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.condition),
                Text(item.price.toString().toRPCurrency()),
              ],
            ),
          ),
          trailing: Icon(Icons.shopping_bag_outlined),
        );
      },
    );
  }
}
