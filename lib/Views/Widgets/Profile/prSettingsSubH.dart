import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class prSettingsSubH extends StatelessWidget {
  final String title;
  final Widget? secondaryWidget;

  prSettingsSubH({
    required this.title,
    this.secondaryWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: Colors.transparent,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style:
                TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
          ),
          secondaryWidget ??
              Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 16,
              )
        ],
      ),
    );
  }
}
