import 'package:flutter/material.dart';
import 'package:vibrance/Views/Widgets/Features/DeviceInfo/BatteryInfo/twoValueCard.dart';

class deviceSpecs extends StatelessWidget {
  const deviceSpecs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.black,
          title: Container(
            height: 150, // Adjusted to fit in the AppBar
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff50c9c2), Color(0xff95deda)]),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'General Info',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                                child: twoValueCard(
                                    text: 'Total Ram', value: '5.23 GB'))),
                        Expanded(
                            flex: 2,
                            child: Container(
                                child: twoValueCard(
                                    text: 'Refresh Rate', value: '60 Hz'))),
                        Expanded(
                            flex: 3,
                            child: Container(
                                child: twoValueCard(
                                    text: 'Fingerprint Sensor',
                                    value: 'Present'))),
                        Expanded(
                            flex: 3,
                            child: Container(
                                child: twoValueCard(
                                    text: 'Fingerprint Sensor',
                                    value: 'Enabled'))),
                        SizedBox(height: 130)
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Container(
                                child: twoValueCard(
                                    text: 'Internal Memory',
                                    value: '59.3/164 GB'))),
                        Expanded(
                            flex: 3,
                            child: Container(
                                child: twoValueCard(
                                    text: 'External Memory', value: 'NA'))),
                        Expanded(
                            flex: 2,
                            child: Container(
                                child: twoValueCard(
                                    text: 'Screen Size',
                                    value: '6.5 inches'))),
                        Expanded(
                            flex: 2,
                            child: Container(
                                child: twoValueCard(
                                    text: 'Resolution',
                                    value: '2140x1080p'))),
                        SizedBox(height: 130)
                      ],
                    ),
                  ))
                ],
              ),
            )
          ], // main col ==================================================
        ),
      ),
    );
  }
}
