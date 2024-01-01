import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int numberCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter',
          style: TextStyle(color: Colors.orange),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$numberCount',
              style: const TextStyle(fontSize: 115, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    incrementCount();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    decrementCount();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    clear();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Icon(Icons.delete),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void incrementCount() {
    setState(() {
      if (numberCount < 100000) {
        numberCount++;
      } else {
        numberCount = 10000;
      }
    });
  }
  void decrementCount() {
    setState(() {
      if (numberCount > 0) {
        numberCount--;
      } else {
        numberCount = 0;
      }
    });
  }
  void clear() {
    setState(() {
      numberCount = 0;
    });
  }
}

