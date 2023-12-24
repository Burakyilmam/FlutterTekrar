import 'package:demo/101/AppbarApp.dart';
import 'package:demo/101/CardApp.dart';
import 'package:demo/101/ColorApp.dart';
import 'package:demo/101/ContainerApp.dart';
import 'package:demo/101/IconApp.dart';
import 'package:demo/101/PaddingApp.dart';
import 'package:demo/101/ScaffoldApp.dart';
import 'package:demo/101/StatelessApp.dart';
import 'package:demo/101/TextApp.dart';
import 'package:demo/101/ButtonApp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DemoProje',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.black,
        )
      ),
      home: CardApp(),
    );
  }
}
