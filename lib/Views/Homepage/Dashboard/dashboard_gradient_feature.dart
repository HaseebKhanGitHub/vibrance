import 'package:flutter/material.dart';

class dashboard_gradient_feature extends StatelessWidget {
  final IconData icon;
  final String text;
  final List<Color> clr;

  dashboard_gradient_feature(this.icon, this.text, this.clr);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 3.0),
              blurRadius: 3.0,
            )
          ],
          gradient: LinearGradient(
            colors: [Color(0xff4FC174), Color(0xff00D7A9)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon),
              Flexible(
                  child: Text(
                'Device Info',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
