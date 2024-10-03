import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/getwidget.dart';
import 'package:vibrance/Views/Widgets/Profile/prSettingsHeading.dart';
import 'package:vibrance/Views/Widgets/Profile/prSettingsSubH.dart';

class profileSettings extends StatelessWidget {
  const profileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 330,
                decoration: BoxDecoration(
                    color: Color(0xff671AFC),
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(100, 100))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 23,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Settings",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Row(
                              children: [
                                CircularProfileAvatar(
                                  "",
                                  backgroundColor: Color(0xff671AFC),
                                  // borderWidth: 1,
                                  //  borderColor: Colors.purpleAccent,
                                  elevation: 20,
                                  radius: 30,
                                  cacheImage: true,
                                  errorWidget: (context, url, error) {
                                    return Icon(
                                      Icons.face,
                                      size: 50,
                                    );
                                  },
                                  onTap: () {},
                                  animateFromOldImageOnUrlChange: true,
                                  placeHolder: (context, url) {
                                    return Container(
                                        child: Center(
                                            child:
                                                CircularProgressIndicator()));
                                  },
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Haseeb Khan",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      letterSpacing: 0.5),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            height: 5,
                            color: Colors.grey.shade200,
                          ),
                          SizedBox(height: 15),
                          prSettingsHeading("Profile Settings"),
                          prSettingsSubH(title: "Edit Name"),
                          prSettingsSubH(title: "Edit Phone Number"),
                          prSettingsSubH(title: "Change Password"),
                          prSettingsSubH(
                            title: "Change Status",
                            secondaryWidget: Row(
                              children: [
                                Text(
                                  "Not Verified",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 16,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          prSettingsHeading("Notification Settings"),
                          prSettingsSubH(
                            title: "Push Notification",
                            secondaryWidget: GFToggle(
                              onChanged: (val) {},
                              value: true,
                              enabledTrackColor: Colors.greenAccent,
                              type: GFToggleType.android,
                            ),
                          ),
                          SizedBox(height: 15),
                          prSettingsHeading("Application Settings"),
                          prSettingsSubH(
                            title: "Background Updates",
                            secondaryWidget: Row(
                              children: [
                                Text(
                                  "Not Allowed",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 16,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 100)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
