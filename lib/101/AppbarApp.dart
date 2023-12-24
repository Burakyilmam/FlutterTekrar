import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppbarApp extends StatelessWidget {
  const AppbarApp({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title:const Text(
          'Demo',
          style: TextStyle(
              color: Colors.orange
          )
      ),
      //centerTitle: true,
      leading: const Icon(
          Icons.menu
      ),
      actions: [
      IconButton(onPressed: (){
        print('Kullanıcı Giriş Yaptı.');
        },
          icon: const Icon(
              Icons.person)
      )
      ],
      //backgroundColor: Colors.black,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      leadingWidth: 40,
    ),
  );
  }
}