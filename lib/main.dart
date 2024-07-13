import 'package:fintechapp/constants/constants.dart';
import 'package:fintechapp/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "PlusJakarta",
        scaffoldBackgroundColor: const Color(0XFFF3F3F3),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Fblack),
        ),
      ),
      home: const HomePage(),
    );
  }
}
