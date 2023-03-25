import 'package:flutter/material.dart';
import 'package:focus_tree/core/button.dart';
import '/core/text.Dart';
import 'core/bottomBar.dart';
import 'features/3dTree/3dTree.dart';
import 'features/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
