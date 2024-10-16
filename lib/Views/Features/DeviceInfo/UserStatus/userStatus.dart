import 'package:flutter/material.dart';
import 'package:vibrance/Views/Features/DeviceInfo/UserStatus/oneValueCard.dart';
import 'package:vibrance/Views/Widgets/Features/DeviceInfo/BatteryInfo/twoValueCard.dart';

class userStatus extends StatefulWidget {
  @override
  State<userStatus> createState() => _userStatusState();
}

class _userStatusState extends State<userStatus> {
  List<String> status = [
    "AWAY",
    "DO NOT DISTURB",
    "DRIVING",
    "EATING",
  ];

  List<String> status2 = ["MEETING", "OUTDOOR", "SLEEPING", "WORKING"];

  String selectedStatus = "AWAY";

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
            height: 60, // Adjusted to fit in the AppBar
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
            colors: [Color(0xff86AAEB), Color(0xff92E9E3)],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50), // Adding space at the top
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Friends Status",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start, // Align top
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child:
                              twoValueCard(text: "User is:", value: "Online"),
                        ),
                        Expanded(
                          child: twoValueCard(
                              text: "Last App Action",
                              value: "2 minutes ago"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child:
                        twoValueCard(text: "User Status:", value: "Driving"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )),
                child: Column(
                  children: [
                    SizedBox(height: 10), // Adding space at the top
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "My Status:",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Eating",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),

                    Expanded(
                        child: ListView.builder(
                      itemCount: status.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Expanded(
                                child: GestureDetector(
                              child: oneValueCard(
                                  value: status[index],
                                  clr: selectedStatus == status[index]
                                      ? Colors.blue
                                      : Color(0xff84abe4)),
                              onTap: () {
                                setState(() {
                                  selectedStatus = status[index];
                                });
                              },
                            )),
                            Expanded(
                                child: GestureDetector(
                              child: oneValueCard(
                                  value: status2[index],
                                  clr: selectedStatus == status2[index]
                                      ? Colors.blue
                                      : Color(0xff84abe4)),
                              onTap: () {
                                setState(() {
                                  selectedStatus = status2[index];
                                });
                              },
                            ))
                          ],
                        );
                      },
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
