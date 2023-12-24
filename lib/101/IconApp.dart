import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IconApp extends StatelessWidget {
    IconApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
            'Icon',
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
      body: Container(
        child: Column(
          children: [
            const Row(
              children: [
                Icon(Icons.abc)
              ],
            ),
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_up,
                    color: Colors.orange,
                  ),
                  label: const Text('Like'),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_down,
                    color: Colors.orange,
                  ),
                  label: const Text('Dislike'),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment,
                    color: Colors.orange,
                  ),
                  label: const Text('Comment'),
                ),
              ],
            )
          ],
        )
        ),
      );
  }
}