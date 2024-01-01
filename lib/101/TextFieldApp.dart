import 'package:flutter/material.dart';

class TextFieldApp extends StatefulWidget {
  const TextFieldApp({Key? key}) : super(key: key);

  @override
  _TextFieldAppState createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Field',
          style: TextStyle(color: Colors.orange),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              labelText: "Ad Soyad",
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            maxLength: 100,
          ),
          TextField(
            controller: phoneNumberController,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.black,
              ),
              labelText: "Cep Telefon Numarası",
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            maxLength: 11,
            keyboardType: TextInputType.phone,
            onChanged: (value) {
              if (value.isNotEmpty && !value.startsWith('05')) {
                phoneNumberController.value = TextEditingValue(
                  text: '05$value',
                  selection: TextSelection.fromPosition(
                    TextPosition(offset: value.length + 2),
                  ),
                );
              }
            },
          ),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ),
              labelText: "Mail Adresi",
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
            ),
            maxLength: 100,
            keyboardType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }
}
