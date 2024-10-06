import 'package:flutter/material.dart';

class topBanner extends StatelessWidget {
  final String text;
  final List<Color> clr;

  topBanner(this.text, this.clr);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(gradient: LinearGradient(colors: clr)),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20,
            color: Colors.white,
            letterSpacing: 2),
      ),
    );
  }
}
