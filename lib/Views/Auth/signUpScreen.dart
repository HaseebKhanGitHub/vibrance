import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import '../Widgets/Auth/authHeading.dart';
import '../Widgets/Auth/authTextField.dart';

class signUp extends StatelessWidget {
  final RoundedLoadingButtonController _logbuttonController =
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
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new authHeading(
                text1: 'Sign Up with Vibrance',
                text2: 'To connect with\n your Partner',
              ),
              SizedBox(
                height: 30,
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
              authTextField(
                  keyboardType: TextInputType.text,
                  HintText: 'Username',
                  ObsecureText: false,
                  icondata: Icons.person,
                  iconsize: 20),
              SizedBox(
                height: 30,
              ),
              authTextField(
                  keyboardType: TextInputType.text,
                  HintText: 'Password',
                  ObsecureText: true,
                  icondata: Icons.password,
                  iconsize: 20),
              SizedBox(
                height: 30,
              ),
              authTextField(
                  keyboardType: TextInputType.text,
                  HintText: 'Confirm Password',
                  ObsecureText: true,
                  icondata: Icons.lock_reset,
                  iconsize: 20),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 500,
                child: RoundedLoadingButton(
                    width: 2000,
                    controller: _logbuttonController,
                    borderRadius: 10,
                    onPressed: () {
                      print('ok');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'By Sign Up, You agree to our terms and conditions',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  Text(
                    " Sign In",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
