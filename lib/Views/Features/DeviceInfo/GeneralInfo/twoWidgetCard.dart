import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class twoWidgetCard extends StatelessWidget {
  final String text1;
  final String value1;
  final Widget? subWidget1;
  final Color? clr1;
  final Color? textclr1;

  //new
  final String text2;
  final String value2;
  final Widget? subWidget2;
  final Color? clr2;
  final Color? textclr2;

  twoWidgetCard(
      {required this.text1,
      required this.value1,
      this.subWidget1,
      this.clr1,
      this.textclr1,
      //new
      required this.text2,
      required this.value2,
      this.subWidget2,
      this.clr2,
      this.textclr2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: clr1 ?? Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    text1,
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                  subWidget1 ??
                      Text(
                        value1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: textclr1 ?? Color(0xff23a8e1),
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    text2,
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                  subWidget2 ??
                      Text(
                        value2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: textclr2 ?? Color(0xff23a8e1),
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
