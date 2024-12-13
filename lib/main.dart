// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pmi_calculater/page/home_Screen.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
