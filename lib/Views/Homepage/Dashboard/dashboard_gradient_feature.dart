import 'package:flutter/material.dart';

class dashboard_gradient_feature extends StatelessWidget {
  final IconData icon;
  final double? iconsize;
  final Color iconColor;
  final String btntext;
  final List<Color> clr;
  final FontWeight? fweight;

  dashboard_gradient_feature(
      this.icon, this.btntext, this.clr, this.iconColor,
      {this.fweight, this.iconsize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        alignment: Alignment.center,
        height: 55,
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
            colors: clr,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                color: iconColor,
                size: iconsize ?? 28.0,
              ),
              Flexible(
                  child: Text(
                btntext,
                style: TextStyle(
                  fontWeight: fweight ?? FontWeight.w300,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
