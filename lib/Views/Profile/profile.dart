import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Text(
          'My Profile',
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25,
              letterSpacing: 2,
              color: Colors.black),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(''), fit: BoxFit.fill)),
        )
      ],
    );
  }
}
