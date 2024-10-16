import 'package:flutter/material.dart';

class oneValueCard extends StatelessWidget {
  final String value;
  final Color clr;

  oneValueCard({required this.value, required this.clr});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
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
                      color: Colors.white),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
