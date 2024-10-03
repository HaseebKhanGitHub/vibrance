import 'package:flutter/cupertino.dart';

class prSettingsHeading extends StatelessWidget {
  final String text;

  prSettingsHeading(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: Color(0xff671AFC)),
      ),
    );
  }
}
