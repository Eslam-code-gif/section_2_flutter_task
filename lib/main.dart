import 'package:flutter/material.dart';
import 'package:section_2_flutter_task/let_is_start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LetIsStartScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
