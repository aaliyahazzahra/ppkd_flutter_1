import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Tugas11/database/db_helper.dart';
import 'package:ppkd_percobaan_1/Tugas11/model/user_model.dart';

// Gunakan ChangeNotifier agar UI bisa "mendengarkan" perubahan state
class RegisterLogic extends ChangeNotifier {
  final TextEditingController nimController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _isLoading = false;
  bool get isLoading => _isLoading; // Getter agar UI bisa baca

  Future<List<UserModel>>? _userListFuture;
  Future<List<UserModel>>? get userListFuture => _userListFuture; // Getter

  final formKey = GlobalKey<FormState>();

  // Konstruktor untuk memuat data awal
  RegisterLogic() {
    _refreshUserList();
  }

  // Fungsi untuk refresh list, sekarang memanggil notifyListeners
  void _refreshUserList() {
    _userListFuture = DbHelper.getAllUser();
    notifyListeners(); // Beri tahu UI bahwa ada data baru untuk ditampilkan
  }

  // Fungsi registrasi
  Future<Map<String, dynamic>> register() async {
    // Hasil: {'success': bool, 'message': String}
    if (formKey.currentState!.validate()) {
      _setLoading(true); // Mulai loading

      final UserModel data = UserModel(
        name: nameController.text,
        nim: nimController.text,
        email: emailController.text,
        password: passwordController.text,
      );

      final bool isSuccess = await DbHelper.registerUser(data);

      _setLoading(false); // Selesai loading

      if (isSuccess) {
        // Kosongkan form jika berhasil
        nameController.clear();
        nimController.clear();
        emailController.clear();
        passwordController.clear();
        _refreshUserList(); // Refresh list di UI
        return {'success': true, 'message': 'Register Berhasil'};
      } else {
        return {
          'success': false,
          'message': 'Email atau NIM ini sudah terdaftar',
        };
      }
    } else {
      return {'success': false, 'message': 'Harap isi semua data dengan benar'};
    }
  }

  // Helper untuk set loading dan notifikasi UI
  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners(); // Beri tahu UI bahwa status loading berubah
  }

  // Jangan lupa dispose controller saat logic class tidak digunakan lagi
  @override
  void dispose() {
    nimController.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
