import 'package:flutter/material.dart';

class locationInfo extends StatelessWidget {
  const locationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.black,
          title: Container(
            height: 150, // Adjusted to fit in the AppBar
            child: Image.asset(
              'assets/images/Logo.png',
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
