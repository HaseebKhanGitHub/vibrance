import 'package:flutter/material.dart';
import 'package:vibrance/Views/Features/DeviceInfo/UserStatus/oneValueCard.dart';

class locationInfo extends StatelessWidget {
  const locationInfo({super.key});

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
              LinearGradient(colors: [Color(0xffb893d6), Color(0xff8ca5db)]),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Location Info',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Card(
                        elevation: 10,
                        child: Container(
                          width: double.infinity,
                          height: 130,
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 30),
                                  child: Icon(
                                    Icons.pin_drop,
                                    color: Colors.red,
                                    size: 50,
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      "North Loop,West Freeway, Houstan, Texas",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                          color: Colors.purple),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    oneValueCard(
                      value: 'United States',
                      clr: Colors.purple,
                      hightt: 80,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Last Updated: 1 min ago",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: Container())
          ], // main col ========================================================
        ),
      ),
    );
  }
}
