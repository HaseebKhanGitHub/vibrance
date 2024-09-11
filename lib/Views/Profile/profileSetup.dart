import 'dart:async';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:vibrance/Views/Invitation/inviteFriend.dart';
import 'package:vibrance/Views/Widgets/Auth/authTextField.dart';

class profileSetup extends StatefulWidget {
  @override
  State<profileSetup> createState() => _profileSetupState();
}

class _profileSetupState extends State<profileSetup> {
  final RoundedLoadingButtonController profileController =
      RoundedLoadingButtonController();

  bool isMale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          width: 150,
          height: 150,
          child: Image.asset('assets/images/Logo.png',
              filterQuality: FilterQuality.high),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black26,
              ),
              child: Text(
                'Profile  Setup',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black,
                    letterSpacing: 2),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            CircularProfileAvatar(
              '',
              imageFit: BoxFit.cover,
              backgroundColor: Colors.cyan,
              initialsText: Text(
                '+',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: authTextField(
                keyboardType: TextInputType.text,
                HintText: 'Your name',
                ObsecureText: false,
                icondata: Icons.face,
                iconsize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: authTextField(
                keyboardType: TextInputType.emailAddress,
                HintText: 'Your username',
                ObsecureText: false,
                icondata: Icons.alternate_email,
                iconsize: 16,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    print('Male Tapped');
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: isMale ? Colors.cyan : Colors.grey,
                        shape: BoxShape.circle,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black38,
                              offset: Offset(1.0, 9.0),
                              blurRadius: 30)
                        ]),
                    child: const Icon(Icons.male, color: Colors.white),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Female Tapped');

                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: !isMale ? Colors.purple : Colors.grey,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              offset: Offset(1.0, 9.0),
                              blurRadius: 30)
                        ]),
                    child: const Icon(
                      Icons.female,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: 250,
                child: RoundedLoadingButton(
                  width: 2000,
                  controller: profileController,
                  borderRadius: 10,
                  onPressed: () {
                    Timer(Duration(seconds: 3), () {
                      profileController.success();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => inviteFriend()));
                    });
                  },
                  child: Text(
                    'Send',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
