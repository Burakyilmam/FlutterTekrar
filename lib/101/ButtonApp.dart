import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const TextButton(
                //onPressed: (){},
                onPressed: null,
                child: Text('Ekle')
                //child: Icon(Icons.add),

            ),
            const ElevatedButton(
                // onPressed: (){},
              onPressed: null,
                // child: const Text('Kaydet')
                child: Icon(Icons.save),
            ),
            const IconButton(
                // onPressed: (){},
              onPressed: null,
                icon: Icon(Icons.save)
            ),
            const FloatingActionButton(
                // onPressed: (){},
              onPressed: null,
                child: Icon(Icons.delete),
                //child: const Text('Sil'),
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: OutlinedButton(
                  // onPressed: null,
                  onPressed: (){
                    print("Tıklandı");
                  },
                  // child: Text('Ekle'),
                  child: const Icon(Icons.add),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states)
                    {
                      if(states.contains(MaterialState.pressed))
                      {
                        return Colors.green;
                      }
                      else{
                        return Colors.red;
                      }
                    }
                    ),
                  padding: MaterialStateProperty.resolveWith((states)
                  {
                    if(states.contains(MaterialState.pressed))
                    {
                      return const EdgeInsets.all(10.0);
                    }
                    else{
                      return const EdgeInsets.all(0.0);
                    }
                  }
                  ),
                  shape: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      );
                    } else {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      );
                    }
                  }),
                ),
                ),
            ),
            OutlinedButton.icon(
                onPressed: (){},
                icon: const Icon(Icons.add),
                label: const Text('Ekle'),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.all(10),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
              ),
            ),
            const OutlinedButton(
                onPressed: null,
                child: Text('Ekle'),
              // child: Icon(Icons.add)
            ),
            const InkWell(
              // onTap: (){},
              onTap: null,
              child: Text(
                  'Ekle',
                  style: TextStyle(
                    color: Colors.orange,
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


