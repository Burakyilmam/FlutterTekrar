import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
<<<<<<< HEAD
      body: Center(
=======
      body: const Center(
>>>>>>> origin/master
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
<<<<<<< HEAD
            SizedBox(
              width: 100,
              height: 50,
              child: OutlinedButton(
                  // onPressed: null,
                  onPressed: (){
                    print("Tıklandı");
                  },
                  // child: Text('Ekle'),
                  child: Icon(Icons.add),
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
                      return EdgeInsets.all(10.0);
                    }
                    else{
                      return EdgeInsets.all(0.0);
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
                icon: Icon(Icons.add),
                label: Text('Ekle'),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.all(10),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
              ),
=======
            OutlinedButton(
                onPressed: null,
                child: Text('Ekle'),
              // child: Icon(Icons.add)
>>>>>>> origin/master
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


