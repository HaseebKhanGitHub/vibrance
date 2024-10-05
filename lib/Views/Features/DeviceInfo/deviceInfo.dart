import 'package:flutter/material.dart';
import 'package:vibrance/Views/Widgets/Features/DeviceInfo/gradientButton.dart';
import 'package:vibrance/Views/Widgets/Features/DeviceInfo/topBanner.dart';

class deviceInfo extends StatelessWidget {
  const deviceInfo({super.key});

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
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              )),
        ),
      ),
      body: Column(
        children: [
          topBanner("Device Info", [Color(0xff4FC174), Color(0xff00D7A9)]),
          SizedBox(height: 20),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      flex: 10,
                      child: gradientButton(
                          "User Status",
                          [Color(0xff86AAEB), Color(0xff92E9E3)],
                          Colors.cyan,
                          true),
                    ),
                    Expanded(
                      flex: 6,
                      child: gradientButton(
                          "Battery",
                          [Color(0xffFAD585), Color(0xfff47a7d)],
                          Colors.redAccent,
                          false),
                    )
                  ],
                ),
              ),
              Expanded(
                child: gradientButton(
                    "General",
                    [Color(0xff50c9c2), Color(0xff95deda)],
                    Colors.teal.shade300,
                    true),
              )
            ],
          )),

          //====================================================================
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: gradientButton(
                    "Device Specs",
                    [Color(0xff50c9c2), Color(0xff95deda)],
                    Color(0xff018caa),
                    false),
              ),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: gradientButton(
                              "Location",
                              [Color(0xffb893d6), Color(0xff8ca5db)],
                              Color(0xffb159c6),
                              false),
                        ),
                        Expanded(
                          flex: 10,
                          child: gradientButton(
                              "Orientation",
                              [Color(0xffFAD585), Color(0xfff47a7d)],
                              Color(0xfff598583),
                              false),
                        )
                      ],
                    ),
                  ),
                ],
              )),
            ],
          ))
        ],
      ),
    );
  }
}
