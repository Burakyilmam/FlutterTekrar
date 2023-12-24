import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          children: [
            TextButton(
                //onPressed: (){},
                onPressed: null,
                child: const Text('Ekle')
                //child: Icon(Icons.add),

            ),
            ElevatedButton(
                // onPressed: (){},
              onPressed: null,
                // child: const Text('Kaydet')
                child: Icon(Icons.save),
            ),
            IconButton(
                // onPressed: (){},
              onPressed: null,
                icon: Icon(Icons.save)
            ),
            FloatingActionButton(
                // onPressed: (){},
              onPressed: null,
                child: Icon(Icons.delete),
                //child: const Text('Sil'),
            ),
            OutlinedButton(
                onPressed: null,
                child: Text('Ekle'),
              // child: Icon(Icons.add)
            ),
            InkWell(
              // onTap: (){},
              onTap: null,
              child: Text(
                  'Ekle',
                  style: TextStyle(
                    color: Colors.red,
                  )
              ),
              //child: const Icon(Icons.add)
            )
          ],
        ),
      ),
    );
  }
}


