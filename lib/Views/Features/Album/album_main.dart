import 'package:flutter/material.dart';

class album_main extends StatefulWidget {
  const album_main({super.key});

  @override
  State<album_main> createState() => _album_mainState();
}

class _album_mainState extends State<album_main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          width: 150,
          height: 150,
          child: Image.asset('assets/images/Logo.png',
              filterQuality: FilterQuality.high),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/message.png',
              width: 35,
              height: 35,
            ),
          ),
        ],
      ),
    );
  }
}
