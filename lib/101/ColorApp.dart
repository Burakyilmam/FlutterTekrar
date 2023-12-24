import 'package:flutter/material.dart';

class ColorApp extends StatelessWidget {
  const ColorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Color',
          style: TextStyle(
            color: Colors.orange,
          ),
        ),
      ),
      body:Container(
        color: Colors.white,
        width: double.infinity,
        height: 250,
        child: const Text(
            'Deneme',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,

          ),
        )
      )
    );
  }
}


