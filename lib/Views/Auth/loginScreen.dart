import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class login extends StatelessWidget {
  final RoundedLoadingButtonController _buttonController =
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
              Container(
                width: 400,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      fillColor: Colors.black26,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hintStyle: TextStyle(fontSize: 15),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        size: 20,
                      ),
                      prefixIconColor: Colors.blue),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlignVertical: TextAlignVertical.center,
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.black26,
                      filled: true,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hintStyle: TextStyle(fontSize: 15),
                      prefixIcon: Icon(
                        Icons.password,
                        size: 20,
                      ),
                      prefixIconColor: Colors.blue),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 500,
                child: RoundedLoadingButton(
                    controller: _buttonController,
                    borderRadius: 10,
                    onPressed: () {
                      print('ok');
                    },
                    child: Text('Login')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
