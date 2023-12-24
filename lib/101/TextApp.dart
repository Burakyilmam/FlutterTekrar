import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  final String musteriAd = 'Burak';

  const TextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hoşgeldin $musteriAd',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Styles.styleOne,
            ),
            SizedBox(height: 20),
            Text(
              'Uzunluk : ${musteriAd.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Styles.styleTwo,
            ),
            SizedBox(height: 20),
            Text(
              'Hoşgeldin ' + musteriAd,
              style: Styles.styleThree,
            ),
          ],
        ),
      ),
    );
  }
}

class Styles {
  static const TextStyle styleOne = TextStyle(
    backgroundColor: Colors.red,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.white,
    wordSpacing: 2,
    letterSpacing: 2,
    decoration: TextDecoration.none,
    fontStyle: FontStyle.italic,
  );
  static const TextStyle styleTwo = TextStyle(
    backgroundColor: Colors.blue,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.white,
    wordSpacing: 2,
    letterSpacing: 2,
    decoration: TextDecoration.none,
    fontStyle: FontStyle.italic,
  );
  static const TextStyle styleThree = TextStyle(
    backgroundColor: Colors.yellow,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.black,
    wordSpacing: 2,
    letterSpacing: 2,
    decoration: TextDecoration.none,
    fontStyle: FontStyle.italic,
  );
}
