import 'package:flutter/material.dart';
import 'package:stroll_project/pages/test_screen_1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/": (context) => const TestScreen1()},
    );
  }
}
