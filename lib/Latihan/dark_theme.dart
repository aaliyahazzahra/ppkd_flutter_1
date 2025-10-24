// import 'package:day_night_themed_switcher/day_night_themed_switcher.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const TemaGelap());
// }

// class TemaGelap extends StatefulWidget {
//   const TemaGelap({super.key});

//   @override
//   State<TemaGelap> createState() => _TemaGelapState();
// }

// class _TemaGelapState extends State<TemaGelap> {
//   ThemeMode theme = ThemeMode.light;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode: theme,
//       home: Scaffold(
//         body: Center(
//           child: DayNightSwitch(
//             // duration: Duration(milliseconds: 800),
//             // initiallyDark: true,
//             size: 80,
//             onChange: (dark) => setState(() {
//               if (dark) {
//                 theme = ThemeMode.dark;
//               } else {
//                 theme = ThemeMode.light;
//               }
//             }),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:ppkd_percobaan_1/Tugas8/Login.dart';

void main() {
  runApp(const TemaGelap());
}

class TemaGelap extends StatefulWidget {
  const TemaGelap({super.key});

  @override
  State<TemaGelap> createState() => _TemaGelapState();
}

class _TemaGelapState extends State<TemaGelap> {
  // State untuk melacak mode tema saat ini
  ThemeMode theme = ThemeMode.light;

  // Method untuk mengubah tema
  void _toggleTheme(bool isDark) {
    setState(() {
      theme = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Pendaftaran Flutter',
      // Mendefinisikan tema terang dan gelap
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue, // Warna dasar untuk mode terang
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.indigo, // Warna dasar untuk mode gelap
        useMaterial3: true,
      ),
      themeMode: theme,

      // Mengarahkan ke Widget Form utama, sambil meneruskan method pengubah tema
      home: HalamanLogin(
        // onThemeChanged: _toggleTheme,
        // isDark: theme == ThemeMode.dark,
      ),
    );
  }
}
