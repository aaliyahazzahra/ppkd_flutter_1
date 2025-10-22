import 'package:flutter/material.dart';

class TugasList extends StatefulWidget {
  const TugasList({super.key});

  @override
  State<TugasList> createState() => _TugasListState();
}

class _TugasListState extends State<TugasList> {
  final List<String> kategori = [
    "Buah-buahan",
    "Sayuran",
    "Elektronik",
    "Pakaian Pria",
    "Pakaian Wanita",
    "Alat Tulis Kantor",
    "Buku & Majalah",
    "Peralatan Dapur",
    "Makanan Ringan",
    "Minuman",
    "Mainan Anak",
    "Peralatan Olahraga",
    "Produk Kesehatan",
    "Kosmetik",
    "Obat-obatan",
    "Aksesoris Mobil",
    "Perabot Rumah",
    "Sepatu & Sandal",
    "Barang Bekas",
    "Voucher & Tiket",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kategori.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text(kategori[index]));
      },
    );
  }
}
