import 'package:flutter/material.dart';

class TugasListView extends StatefulWidget {
  const TugasListView({super.key});

  @override
  State<TugasListView> createState() => _TugasListViewState();
}

class _TugasListViewState extends State<TugasListView> {
  final List<Map<String, dynamic>> kategori = [
    {"name": "Buah-buahan", "icon": Icons.apple},
    {"name": "Sayuran", "icon": Icons.local_florist},
    {"name": "Elektronik", "icon": Icons.devices_other},
    {"name": "Pakaian Pria", "icon": Icons.man},
    {"name": "Pakaian Wanita", "icon": Icons.woman},
    {"name": "Alat Tulis Kantor", "icon": Icons.create_new_folder},
    {"name": "Buku & Majalah", "icon": Icons.book},
    {"name": "Peralatan Dapur", "icon": Icons.kitchen},
    {"name": "Makanan Ringan", "icon": Icons.cookie},
    {"name": "Minuman", "icon": Icons.local_cafe},
    {"name": "Mainan Anak", "icon": Icons.toys},
    {"name": "Peralatan Olahraga", "icon": Icons.sports_soccer},
    {"name": "Produk Kesehatan", "icon": Icons.health_and_safety},
    {"name": "Kosmetik", "icon": Icons.face},
    {"name": "Obat-obatan", "icon": Icons.medical_services},
    {"name": "Aksesoris Mobil", "icon": Icons.directions_car},
    {"name": "Perabotan Rumah", "icon": Icons.chair},
    {"name": "Sepatu & Sandal", "icon": Icons.luggage},
    {"name": "Barang Bekas", "icon": Icons.recycling},
    {"name": "Voucher & Tiket", "icon": Icons.airplane_ticket},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kategori.length,
      itemBuilder: (BuildContext context, int index) {
        final item = kategori[index];
        return ListTile(
          leading: Icon(item["icon"], color: Colors.pink),
          title: Text(item["name"]),
        );
      },
    );
  }
}
