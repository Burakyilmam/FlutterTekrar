import 'package:demo/101/CounterApp.dart';
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
      home: CounterApp(),
    );
  }
}
