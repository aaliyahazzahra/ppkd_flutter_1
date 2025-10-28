import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Tugas11/database/db_helper.dart';
import 'package:ppkd_percobaan_1/Tugas11/model/user_model.dart';

class CRWidgetDay19 extends StatefulWidget {
  const CRWidgetDay19({super.key});

  @override
  State<CRWidgetDay19> createState() => _CRWidgetDay19State();
}

class _CRWidgetDay19State extends State<CRWidgetDay19> {
  final nameController = TextEditingController();
  final nimController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  getData() {
    DbHelper.getAllUsers();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/regisbackground.png'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 12,
            children: [
              Text("Daftar User", style: TextStyle(fontSize: 24)),

              FutureBuilder(
                future: DbHelper.getAllUsers(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else {
                    final data = snapshot.data as List<UserModel>;
                    return Expanded(
                      child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                          final items = data[index];
                          return Column(
                            children: [
                              ListTile(
                                title: Text(items.name ?? ''),
                                subtitle: Text(items.email ?? ''),
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildTextField({
    String? hintText,
    bool isPassword = false,
    TextEditingController? controller,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
