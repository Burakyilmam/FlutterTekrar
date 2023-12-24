import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaddingApp extends StatelessWidget {
  PaddingApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
            'Padding',
            style: TextStyle(
                color: Colors.orange
            )
        ),
      ),
      body:Column(
        children: [
          Row(
            children: [
              const Padding(padding: EdgeInsets.symmetric(horizontal: 35,vertical: 350)),
              Container(
                color: Colors.green,
                width: 50,
                height: 50,
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 2.5),
                child: const Text("1"),
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 2.5),
                child: const Text("2"),
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 2.5),
                child: const Text("3"),
              ),
              Container(
                color: Colors.purple,
                width: 50,
                height: 50,
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 2.5),
                child: const Text("4"),
              ),
              Container(
                color: Colors.grey,
                width: 50,
                height: 50,
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 2.5),
                child: const Text("5"),
              )
            ],
          )
        ],
      )
    );
  }
}