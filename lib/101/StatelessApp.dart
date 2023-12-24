import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatelessApp extends StatelessWidget {
  StatelessApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
            'Stateless',
            style: TextStyle(
                color: Colors.orange
            )
        ),
      ),
      body: const Column(
        children: [
          _TextWidget(text: "Ali"),
          _TextWidget(text: "Veli"),
          _TextWidget(text: "Zeynep"),
          _TextWidget(text: "Aslı"),
          _TextWidget(text: "Buse"),
        ],
      )
    );
  }
}

class _TextWidget extends StatelessWidget{
  const _TextWidget({Key? key , required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
  return Text(text);
  }
}