import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Demo')
        ),
      ),
      body: const Center(
          child: Text(
              'A',
            style: TextStyle(
              color: Colors.black,
              fontSize: 100,
            ),
          )
      ),
      drawer: const Drawer(),
      floatingActionButton:  FloatingActionButton(
          onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: CupertinoColors.systemOrange,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}