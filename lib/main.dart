import 'package:flutter/material.dart';
import 'package:vibrance/Views/Auth/loginScreen.dart';

void main() {
  runApp(const vibrance());
}

class vibrance extends StatelessWidget {
  const vibrance({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Vibrance', debugShowCheckedModeBanner: false, home: login());
  }
}
