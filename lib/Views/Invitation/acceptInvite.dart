import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class acceptInvite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.black,
          title: Container(
            height: 200,
            child: Image.asset(
              'assets/images/Logo.png',
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.person,
                color: Colors.purple,
                size: 35,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.orange.shade300,
            ),
            child: Text(
              'See Received Invitations',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white,
                  letterSpacing: 2),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            width: 500,
            height: 500,
            alignment: Alignment.center,
            child: Image.asset("assets/images/emptynoti.PNG"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your received invitations are currently',
                style: GoogleFonts.nunito(
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                textAlign: TextAlign.center,
              ),
              Text(
                ' Empty',
                style: GoogleFonts.nunito(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}
