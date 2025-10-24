import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class StudentModel {
  int? id;
  String email;
  String password;
  String name;
  String nim;

  StudentModel({
    this.id,
    required this.email,
    required this.password,
    required this.name,
    required this.nim,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'password': password,
      'name': name,
      'nim': nim,
    };
  }

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      // id: map['id'] as int,
      email: map['email'] as String,
      password: map['class'] as String,
      name: map['name'] as String,
      nim: map['nim'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentModel.fromJson(String source) =>
      StudentModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
