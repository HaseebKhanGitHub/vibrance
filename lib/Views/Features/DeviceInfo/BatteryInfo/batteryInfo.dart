import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:vibrance/Views/Widgets/Features/DeviceInfo/BatteryInfo/twoValueCard.dart';

class batteryInfo extends StatelessWidget {
  const batteryInfo({super.key});

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
              LinearGradient(colors: [Color(0xfffad585), Color(0xfff47a7d)]),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Battery Status',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            // SizedBox(height: 10),
            Expanded(
                child: Container(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: twoValueCard(
                              text: "Status",
                              value: "Discharged",
                              textclr: Colors.redAccent,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: twoValueCard(
                              text: "Charging Type",
                              value: "-",
                              textclr: Colors.redAccent,
                            ),
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
                          flex: 7,
                          child: Container(
                            width: double.infinity,
                            child: twoValueCard(
                              text: "Status",
                              value: "N/A",
                              textclr: Colors.redAccent,
                              subWidget: SleekCircularSlider(
                                min: 0,
                                max: 100,
                                appearance: CircularSliderAppearance(
                                  customColors: CustomSliderColors(
                                      progressBarColor: Colors.redAccent),
                                  infoProperties: InfoProperties(
                                      mainLabelStyle: TextStyle(
                                          fontWeight: FontWeight.w400)),
                                  size: 70,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(height: 20),
                        Expanded(
                          flex: 4,
                          child: Container(
                            width: double.infinity,
                            child: twoValueCard(
                              text: "Temperature",
                              value: "35.0",
                              textclr: Colors.redAccent,
                            ),
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
                          child: Container(
                            width: double.infinity,
                            child: twoValueCard(
                              text: "Battery Health",
                              value: "Good",
                              textclr: Colors.redAccent,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: twoValueCard(
                              text: "Battery Technology",
                              value: "Li-Poly",
                              textclr: Colors.redAccent,
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            )),
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
                          'My Battery Status',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    //   SizedBox(height: 10),
                    Expanded(
                        child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: twoValueCard(
                                      clr: Colors.redAccent,
                                      textclr: Colors.white,
                                      text: "Status",
                                      value: "Discharged",
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: twoValueCard(
                                      text: "Charging Type",
                                      value: "-",
                                      clr: Colors.redAccent,
                                      textclr: Colors.white,
                                    ),
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
                                  flex: 7,
                                  child: Container(
                                    width: double.infinity,
                                    child: twoValueCard(
                                      text: "Status",
                                      value: "N/A",
                                      clr: Colors.redAccent,
                                      subWidget: SleekCircularSlider(
                                        min: 0,
                                        max: 100,
                                        appearance: CircularSliderAppearance(
                                          customColors: CustomSliderColors(
                                              progressBarColor: Colors.white),
                                          infoProperties: InfoProperties(
                                              mainLabelStyle: TextStyle(
                                                  fontWeight:
                                                      FontWeight.w400)),
                                          size: 70,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // SizedBox(height: 20),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    width: double.infinity,
                                    child: twoValueCard(
                                      text: "Temperature",
                                      value: "35.0",
                                      clr: Colors.redAccent,
                                      textclr: Colors.white,
                                    ),
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
                                  child: Container(
                                    width: double.infinity,
                                    child: twoValueCard(
                                      text: "Battery Health",
                                      value: "Good",
                                      clr: Colors.redAccent,
                                      textclr: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: twoValueCard(
                                      text: "Battery Technology",
                                      value: "Li-Poly",
                                      clr: Colors.redAccent,
                                      textclr: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
