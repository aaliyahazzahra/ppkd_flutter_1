import 'package:path/path.dart';
import 'package:ppkd_percobaan_1/Tugas11/model/student_model.dart';
import 'package:ppkd_percobaan_1/Tugas11/model/user_model.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static const tableUser = 'users';
  static const tableStudent = 'students';
  static Future<Database> db() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'ppkd.db'),
      onCreate: (db, version) async {
        // Membuat tabel users
        await db.execute(
          "CREATE TABLE $tableUser(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, nim TEXT UNIQUE, email TEXT UNIQUE, password TEXT)",
        );

        // Membuat tabel students
        // await db.execute(
        //   "CREATE TABLE $tableStudent(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, nim TEXT UNIQUE, email TEXT UNIQUE, password TEXT)",
        // );
      },

      // Karena ini database baru, onUpgrade tidak akan dijalankan.
      // onUpgrade: (db, oldVersion, newVersion) async {
      //   if (newVersion == 2) {
      //     await db.execute(
      //       "CREATE TABLE $tableStudent(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, class TEXT, age int)",
      //     );
      //   }
      // },
      version: 1,
    );
  }

  static Future<bool> registerUser(UserModel user) async {
    final dbs = await db();
    //Insert adalah fungsi untuk menambahkan data (CREATE)
    try {
      await dbs.insert(
        tableUser, //nama tabel
        user.toMap(),
        conflictAlgorithm: ConflictAlgorithm.fail,
      );
      print(user.toMap());
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<UserModel?> loginUser({
    required String email,
    required String password,
  }) async {
    final dbs = await db();
    //query adalah fungsi untuk menampilkan data (READ)
    final List<Map<String, dynamic>> results = await dbs.query(
      tableUser,
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );
    if (results.isNotEmpty) {
      return UserModel.fromMap(results.first);
    }
    return null;
  }

  //MENAMBAHKAN SISWA
  static Future<void> createStudent(StudentModel student) async {
    final dbs = await db();
    //Insert adalah fungsi untuk menambahkan data (CREATE)
    await dbs.insert(
      tableStudent,
      student.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print(student.toMap());
  }

  //GET SISWA
  static Future<List<UserModel>> getAllUsers() async {
    final dbs = await db();
    final List<Map<String, dynamic>> results = await dbs.query(tableUser);
    print(results.map((e) => StudentModel.fromMap(e)).toList());
    return results.map((e) => UserModel.fromMap(e)).toList();
  }
}
