import 'package:app4pm/art-space/pages/page.dart';
import 'package:app4pm/navBottom/pages/Name.dart';
import 'package:app4pm/navBottom/pages/Nim.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal Desc',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff121212),
        useMaterial3: true,
      ),
      home: page(),
    );
  }
}