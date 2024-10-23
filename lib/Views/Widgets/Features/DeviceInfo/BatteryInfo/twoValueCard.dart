import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class twoValueCard extends StatelessWidget {
  final String text;
  final String value;
  final Widget? subWidget;
  final Color? clr;
  final Color? textclr;

  twoValueCard(
      {required this.text,
      required this.value,
      this.subWidget,
      this.clr,
      this.textclr});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: clr ?? Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            subWidget ??
                Text(
                  value,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: textclr ?? Color(0xff23a8e1),
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                )
          ],
        ),
      ),
    );
  }
}
