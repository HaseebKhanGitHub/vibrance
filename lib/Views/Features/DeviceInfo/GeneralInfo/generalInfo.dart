import 'package:flutter/material.dart';
import 'package:vibrance/Views/Features/DeviceInfo/GeneralInfo/twoWidgetCard.dart';
import 'package:vibrance/Views/Widgets/Features/DeviceInfo/BatteryInfo/twoValueCard.dart';

class generalInfo extends StatelessWidget {
  const generalInfo({super.key});

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
          gradient:
              LinearGradient(colors: [Color(0xff86AAEB), Color(0xff92E9E3)]),
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
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: twoValueCard(
                              text: "Screen State",
                              value: "Unlocked",
                              textclr: Colors.tealAccent,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: twoWidgetCard(
                              text1: "System Volume",
                              value1: "0/7",
                              textclr1: Colors.tealAccent,
                              text2: "Media Volume",
                              value2: "4/7",
                              textclr2: Colors.tealAccent,
                            ),
                          )
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: twoWidgetCard(
                              text1: "Light Activity",
                              value1: "Dim Light",
                              textclr1: Colors.tealAccent,
                              text2: "Light Intensity",
                              value2: "4",
                              textclr2: Colors.tealAccent,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: twoValueCard(
                              text: "Brightness",
                              value: "20%",
                              textclr: Colors.tealAccent,
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  )),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'My General Info',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: twoValueCard(
                                    text: "Screen State",
                                    value: "Unlocked",
                                    textclr: Colors.white,
                                    clr: Colors.tealAccent,
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: twoWidgetCard(
                                    text1: "System Volume",
                                    value1: "0/7",
                                    textclr1: Colors.white,
                                    text2: "Media Volume",
                                    value2: "4/7",
                                    textclr2: Colors.white,
                                    clr1: Colors.tealAccent,
                                  ),
                                )
                              ],
                            ),
                          )),
                          Expanded(
                              child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: twoWidgetCard(
                                    text1: "Light Activity",
                                    value1: "Dim Light",
                                    textclr1: Colors.white,
                                    text2: "Light Intensity",
                                    value2: "4",
                                    textclr2: Colors.white,
                                    clr1: Colors.tealAccent,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: twoValueCard(
                                    text: "Brightness",
                                    value: "20%",
                                    textclr: Colors.white,
                                    clr: Colors.tealAccent,
                                  ),
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ], // main col ----------------------------------------------
        ),
      ),
    );
  }
}
