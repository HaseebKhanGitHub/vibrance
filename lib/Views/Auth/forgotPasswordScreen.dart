import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:vibrance/Views/Widgets/Auth/authHeading.dart';

import '../Widgets/Auth/authTextField.dart';

class forgotPassword extends StatelessWidget {
  final RoundedLoadingButtonController _forgotController =
      RoundedLoadingButtonController();

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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            authHeading(text1: 'Forgot your Password?', text2: ''),
            Container(
                width: 150,
                height: 150,
                child: Image.asset('assets/images/forgot.png')),
            SizedBox(
              height: 30,
            ),
            Text(
              'To request a new one, type your email below. A link to reset the password will be sent to that email',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            authTextField(
                keyboardType: TextInputType.emailAddress,
                HintText: 'Email',
                ObsecureText: false,
                icondata: Icons.email_outlined,
                iconsize: 20),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              child: RoundedLoadingButton(
                  width: 2000,
                  controller: _forgotController,
                  borderRadius: 10,
                  onPressed: () {
                    print('ok');
                  },
                  child: Text(
                    'Send',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
