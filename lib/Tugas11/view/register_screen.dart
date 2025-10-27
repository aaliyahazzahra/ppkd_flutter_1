import 'package:bottom_bar_matu/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ppkd_percobaan_1/Latihan/widget.dart';
import 'package:ppkd_percobaan_1/Tugas11/model/user_model.dart';
import 'package:ppkd_percobaan_1/Tugas11/view/create_student.dart';

class RegisterScreenDay19 extends StatefulWidget {
  const RegisterScreenDay19({super.key});
  static const id = "/register";
  @override
  State<RegisterScreenDay19> createState() => _RegisterScreenDay19State();
}

class _RegisterScreenDay19State extends State<RegisterScreenDay19> {
  // Buat instance
  late RegisterLogic _logic;

  bool isVisibility = false;

  @override
  void initState() {
    super.initState();
    _logic = RegisterLogic(); // Inisialisasi logic class

    _logic.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _logic.removeListener(() {});
    _logic.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registrasi & Daftar Pengguna")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Form(
            key: _logic.formKey,
            child: Column(
              children: [
                Card(
                  color: colorYellowDark,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        height(16),
                        buildTitle("Nama"),
                        height(4),
                        buildTextField(
                          hintText: "Enter your full name",

                          controller: _logic.nameController,
                          validator: (value) => value == null || value.isEmpty
                              ? "Nama tidak boleh kosong"
                              : null,
                        ),
                        height(8),
                        buildTitle("NIM"),
                        height(4),
                        buildTextField(
                          hintText: "Enter your student number",
                          controller: _logic.nimController,
                          validator: (value) => value == null || value.isEmpty
                              ? "NIM tidak boleh kosong"
                              : null,
                        ),
                        height(8),
                        buildTitle("Email Address"),
                        height(4),
                        buildTextField(
                          hintText: "Enter your email",
                          controller: _logic.emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Email tidak boleh kosong";
                            if (!value.contains('@'))
                              return "Email tidak valid";
                            if (!RegExp(
                              r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$",
                            ).hasMatch(value))
                              return "Format Email tidak valid";
                            return null;
                          },
                        ),
                        height(8),
                        buildTitle("Password"),
                        height(4),
                        buildTextField(
                          hintText: "Enter your password",
                          isPassword: true,
                          controller: _logic.passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Password tidak boleh kosong";
                            if (value.length < 6)
                              return "Password minimal 6 karakter";
                            return null;
                          },
                        ),
                        height(16),
                        LoginButton(
                          text: "Register", // Teks tetap

                          onPressed: _logic.isLoading ? null : _handleRegister,

                          child: _logic.isLoading
                              ? SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  ),
                                )
                              : Text("Register"),
                        ),
                        height(8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Have an account?",
                              style: TextStyle(fontSize: 11),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: Size(50, 30),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () => Navigator.of(
                                context,
                              ).pop(), // Kembali ke login
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // --- Bagian Daftar Pengguna
                height(20),
                Text(
                  "Pengguna Terdaftar:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                height(10),
                Expanded(child: _buildUserList()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleRegister() async {
    final result = await _logic.register();

    Fluttertoast.showToast(msg: result['message']);
  }

  // untuk membangun daftar pengguna
  Widget _buildUserList() {
    return FutureBuilder<List<UserModel>>(
      future: _logic.userListFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}"));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text("Belum ada pengguna terdaftar."));
        } else {
          final users = snapshot.data!;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return Card(
                margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      user.name?.substring(0, 1).toUpperCase() ?? '?',
                    ),
                  ),
                  title: Text(user.name ?? 'No Name'),
                  subtitle: Text(
                    "NIM: ${user.nim ?? '-'} | Email: ${user.email ?? '-'}",
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }

  // --- Fungsi UI Helper Lainnya

  TextFormField buildTextField({
    String? hintText,
    bool isPassword = false,
    TextEditingController? controller,
    String? Function(String?)? validator,
  }) {
    // Fungsi buildTextField
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: isPassword ? !isVisibility : false,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white.withOpacity(0.9),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide.none,
        ),
        //untuk visibility password
        suffixIcon: isPassword
            ? IconButton(
                onPressed: () => setState(
                  () => isVisibility = !isVisibility,
                ), // Tetap gunakan setState di sini
                icon: Icon(
                  isVisibility ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                ),
              )
            : null,
      ),
    );
  }

  SizedBox height(double height) => SizedBox(height: height);
  SizedBox width(double width) => SizedBox(width: width);

  Widget buildTitle(String text) {
    // Fungsi buildTitle
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, bottom: 2.0),
        child: Text(
          text,
          style: TextStyle(fontSize: 11, color: Colors.grey[700]),
        ),
      ),
    );
  }
}
