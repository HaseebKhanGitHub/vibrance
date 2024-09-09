import 'package:flutter/material.dart';
import 'package:vibrance/Views/Auth/loginScreen.dart';
import 'package:vibrance/Views/Invitation/acceptInvite.dart';
import 'package:vibrance/Views/Invitation/inviteFriend.dart';
import 'package:vibrance/Views/Profile/profileSetup.dart';

import 'Views/Auth/forgotPasswordScreen.dart';
import 'Views/Auth/signUpScreen.dart';

void main() {
  runApp(const vibrance());
}

class vibrance extends StatelessWidget {
  const vibrance({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Vibrance',
        debugShowCheckedModeBanner: false,
        home: profileSetup());
  }
}
