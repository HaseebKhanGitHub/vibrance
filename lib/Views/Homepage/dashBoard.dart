import 'package:flutter/material.dart';

class dashBoard extends StatelessWidget {
  const dashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            'Dashboard',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 32,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                letterSpacing: 2),
          ),
        )
      ],
    );
  }
}
