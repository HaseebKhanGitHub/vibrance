import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class authHeading extends StatelessWidget {
  final String text1;
  final String text2;

  const authHeading({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 60,
        ),
        Row(
          children: [
            Text(text1,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            Container(
              width: 40,
              height: 30,
              child: Image.asset('assets/images/symbol.png',
                  filterQuality: FilterQuality.high),
            )
          ],
        ),
        Text(text2,
            style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ],
    );
  }
}
