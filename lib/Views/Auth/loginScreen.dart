import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:vibrance/Views/Auth/forgotPasswordScreen.dart';
import 'package:vibrance/Views/Auth/signUpScreen.dart';
import 'package:vibrance/Views/Profile/profileSetup.dart';
import 'package:vibrance/Views/Widgets/Auth/authHeading.dart';
import 'package:vibrance/Views/Widgets/Auth/authTextField.dart';

class login extends StatelessWidget {
  final RoundedLoadingButtonController _loginbuttonController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vibrance',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.orangeAccent,
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
                text1: 'Sign In to Vibrance',
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
              Container(
                width: 400,
                child: authTextField(
                    keyboardType: TextInputType.text,
                    HintText: 'Password',
                    ObsecureText: true,
                    icondata: Icons.password,
                    iconsize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 500,
                child: RoundedLoadingButton(
                    width: 2000,
                    controller: _loginbuttonController,
                    borderRadius: 10,
                    onPressed: () {
                      Timer(Duration(seconds: 3), () {
                        _loginbuttonController.success();
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => profileSetup()));
                      });
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => forgotPassword()));
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => signUp()));
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
