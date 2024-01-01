import 'package:demo/101/CounterApp.dart';
import 'package:flutter/material.dart';

class PageviewApp extends StatefulWidget {
  const PageviewApp({Key? key}) : super(key: key);

  @override
  _PageviewAppState createState() => _PageviewAppState();
}

class _PageviewAppState extends State<PageviewApp> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page View',
          style: TextStyle(color: Colors.orange),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: FloatingActionButton(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              onPressed: () {
                pageController.previousPage(duration: const Duration(milliseconds: 450), curve: Curves.linear);
              },
              child: const Icon(Icons.chevron_left),
            ),
          ),
            FloatingActionButton(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              onPressed: () {
                pageController.nextPage(duration: const Duration(milliseconds: 450), curve: Curves.linear);
              },
              child: const Icon(Icons.chevron_right),
            ),
        ],
      ),
      body: PageView(
        controller: pageController,
        children: [
          Container(
            color: Colors.red,
            child: const Center(child: Text("1", style: TextStyle(fontSize: 100),)),
          ),
          Container(
            color: Colors.blue,
            child: const Center(child: Text("2", style: TextStyle(fontSize: 100),)),
          ),
          Container(
            color: Colors.green,
            child: const Center(child: Text("3", style: TextStyle(fontSize: 100),)),
          ),
          Container(
            color: Colors.orange,
            child: const Center(child: Text("4", style: TextStyle(fontSize: 100),)),
          ),
          const CounterApp(),
        ],
      ),
    );
  }
}