import 'package:flutter/material.dart';

class ContainerApp extends StatelessWidget{
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 100,
            child: Text(
                'a' * 500,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 100,
            child: Text(
              'b' * 500,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox.shrink(), // Boş Alan
          SizedBox.square(
            dimension: 50,
            child: Text('c' * 12),
          ),
          Container(
            width: double.infinity,
            height: 100,
            //color: Colors.red,
            padding: EdgeInsets.all(10),
            //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            margin: EdgeInsets.all(10),
            //margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.red,
              border: Border.all(
                  width: 10,
                  color: Colors.blueAccent
              ),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
            BoxShadow(
            color: Colors.orange.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),]
            ),
            constraints: const BoxConstraints(
                maxWidth: double.infinity,
                minWidth: 50,
                maxHeight: 500,
            ),
            child: Text(
              'd' * 500,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),

    );
  }
}
