import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vibrance',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Text('Sign in to Vibrance',
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
                Text('To connect with\n your Partner',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  fillColor: Colors.black26,
                  filled: true,
                  hintText: 'Email',
                  hintStyle: TextStyle(fontSize: 15),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    size: 15,
                  ),
                  prefixIconColor: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
