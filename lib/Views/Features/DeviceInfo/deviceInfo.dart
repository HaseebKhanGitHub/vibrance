import 'package:flutter/material.dart';

class deviceInfo extends StatelessWidget {
  const deviceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBar(
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.black,
              title: Container(
                height: 200,
                child: Image.asset(
                  'assets/images/Logo.png',
                  filterQuality: FilterQuality.high,
                ),
              ),
              leading: null,
            )));
  }
}
