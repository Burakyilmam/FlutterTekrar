import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  const CardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
            'Card',
            style: TextStyle(
                color: Colors.orange
            )
        ),
      ),
      body: const Column(
        children: [
          Row(
            children: [
              Card(
                margin: EdgeInsets.all(10),
                color: Colors.white,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Center(child: Text('1',style: TextStyle(color:Colors.purple,fontSize: 20))),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                color: Colors.white,
                shape: RoundedRectangleBorder(),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Center(child: Text('2',style: TextStyle(color:Colors.red,fontSize: 20),)),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                color: Colors.white,
                shape: CircleBorder(),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Center(child: Text('3',style: TextStyle(color:Colors.orange,fontSize: 20),)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}