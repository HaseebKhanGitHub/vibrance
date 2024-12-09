import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vibrance/Views/Auth/loginScreen.dart';
import 'package:vibrance/Views/Features/Album/album_main.dart';
import 'package:vibrance/Views/Features/Album/album_post.dart';
import 'package:vibrance/Views/Features/Album/my_album.dart';
import 'package:vibrance/Views/Features/DeviceInfo/BatteryInfo/batteryInfo.dart';
import 'package:vibrance/Views/Features/DeviceInfo/DeviceSpecs/deviceSpecs.dart';
import 'package:vibrance/Views/Features/DeviceInfo/GeneralInfo/generalInfo.dart';
import 'package:vibrance/Views/Features/DeviceInfo/UserStatus/userStatus.dart';
import 'package:vibrance/Views/Features/DeviceInfo/deviceInfo.dart';
import 'package:vibrance/Views/Homepage/homePage.dart';
import 'package:vibrance/Views/Invitation/acceptInvite.dart';
import 'package:vibrance/Views/Invitation/inviteFriend.dart';
import 'package:vibrance/Views/Profile/profileSettings.dart';
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
    return ResponsiveSizer(builder: (BuildContext, Orientation, ScreenType) {
      return MaterialApp(
          title: 'Vibrance',
          debugShowCheckedModeBanner: false,
          home: albumPost());
    });
  }
}
