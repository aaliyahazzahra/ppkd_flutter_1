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
    _userListFuture = DbHelper.getAllUsers();
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
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:ppkd_percobaan_1/Latihan/widget.dart';
// import 'package:ppkd_percobaan_1/Tugas11/database/db_helper.dart';
// import 'package:ppkd_percobaan_1/Tugas11/model/student_model.dart';

// class CRWidgetDay19 extends StatefulWidget {
//   const CRWidgetDay19({super.key});

//   @override
//   State<CRWidgetDay19> createState() => _CRWidgetDay19State();
// }

// class _CRWidgetDay19State extends State<CRWidgetDay19> {
//   final emailC = TextEditingController();

//   final passC = TextEditingController();
//   final nameC = TextEditingController();

//   final nimC = TextEditingController();
//   getData() {
//     DbHelper.getAllStudent();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           spacing: 12,
//           children: [
//             Text("Pendaftaran Siswa", style: TextStyle(fontSize: 24)),
//             buildTextField(hintText: "Email", controller: emailC),

//             buildTextField(hintText: "Age", controller: passC),
//             buildTextField(hintText: "Name", controller: nameC),

//             buildTextField(hintText: "Class", controller: nimC),
//             LoginButton(
//               text: "Tambahkan",
//               onPressed: () {
//                 if (nameC.text.isEmpty) {
//                   Fluttertoast.showToast(msg: "Nama belum diisi");
//                 } else if (nimC.text.isEmpty) {
//                   Fluttertoast.showToast(msg: "Email belum diisi");
//                 } else if (emailC.text.isEmpty) {
//                   Fluttertoast.showToast(msg: "Class belum diisi");
//                 } else if (passC.text.isEmpty) {
//                   Fluttertoast.showToast(msg: "Age belum diisi");
//                 } else {
//                   final StudentModel dataStudent = StudentModel(
//                     name: nameC.text,
//                     nim: nimC.text,
//                     email: emailC.text,
//                     password: passC.text,
//                   );
//                   DbHelper.createStudent(dataStudent).then((value) {
//                     nameC.clear();
//                     nimC.clear();
//                     emailC.clear();
//                     passC.clear();
//                     getData();
//                     Fluttertoast.showToast(msg: "Terimakasih telah mendaftar");
//                   });
//                 }
//               },
//             ),
//             SizedBox(height: 30),
//             FutureBuilder(
//               future: DbHelper.getAllStudent(),
//               builder: (BuildContext context, AsyncSnapshot snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return CircularProgressIndicator();
//                 } else {
//                   final data = snapshot.data as List<StudentModel>;
//                   return Expanded(
//                     child: ListView.builder(
//                       itemCount: data.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         final items = data[index];
//                         return Column(
//                           children: [
//                             ListTile(
//                               title: Text(items.name),
//                               subtitle: Text(items.email),
//                             ),
//                           ],
//                         );
//                       },
//                     ),
//                   );
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   TextFormField buildTextField({
//     String? hintText,
//     bool isPassword = false,
//     TextEditingController? controller,
//     String? Function(String?)? validator,
//   }) {
//     return TextFormField(
//       validator: validator,
//       controller: controller,
//       decoration: InputDecoration(
//         hintText: hintText,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(32),
//           borderSide: BorderSide(
//             color: Colors.black.withOpacity(0.2),
//             width: 1.0,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(32),
//           borderSide: BorderSide(color: Colors.black, width: 1.0),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(32),
//           borderSide: BorderSide(
//             color: Colors.black.withOpacity(0.2),
//             width: 1.0,
//           ),
//         ),
//       ),
//     );
//   }
// }
