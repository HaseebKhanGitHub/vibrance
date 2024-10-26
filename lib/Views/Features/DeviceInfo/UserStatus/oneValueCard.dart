import 'package:flutter/material.dart';

class oneValueCard extends StatelessWidget {
  final String value;
  final Color clr;
  final Color? textColor;
  final double? hightt;

  oneValueCard(
      {required this.value, required this.clr, this.hightt, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: hightt,
      child: Card(
        color: clr,
        elevation: 10,
        child: Center(
          child: Column(
            children: [
              Expanded(
                  child: Align(
                alignment: Alignment.center,
                child: Text(
                  value,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      fontSize: 15,
                      color: textColor ?? Colors.grey),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
