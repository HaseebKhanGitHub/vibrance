import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  bool more = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 15),
          Text(
            'My Profile',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                letterSpacing: 2,
                color: Colors.black),
          ),
          Container(
            // height: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/doodle.jpg'),
                  fit: BoxFit.fill),
            ),
            child: CircularProfileAvatar(
              "",
              backgroundColor: Colors.cyan,
              borderWidth: 1,
              borderColor: Colors.purpleAccent,
              elevation: 20,
              radius: 40,
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
                    child: Center(child: CircularProgressIndicator()));
              },
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Jason Blake',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Text(
            '@jay45',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Button action
            },
            style: ElevatedButton.styleFrom(
              side: BorderSide(color: Color(0xff671AFC)),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20), // Set the rounded corners here
              ),
            ),
            child: Text(
              'Edit Profile Details',
              style: TextStyle(
                  color: Color(0xff671AFC),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                cardDetailRow(" Email", Icons.alternate_email,
                    "jay45@gmail.com", Colors.grey.shade200),
                cardDetailRow(" Country", Icons.outlined_flag,
                    "United States", Colors.grey.shade200),
                cardDetailRow(" Phone Number", Icons.phone,
                    "Not Currently Set", Colors.grey.shade200),
                more
                    ? cardDetailRow(
                        " Gender", Icons.people, "Male", Colors.grey.shade200)
                    : Container(),
                more
                    ? cardDetailRow(" Partner", Icons.person,
                        "Robbie Williamss", Colors.grey.shade200)
                    : Container(),
                more
                    ? cardDetailRow(" UID", Icons.fingerprint,
                        "HUE83VFNU73BF65", Colors.grey.shade200)
                    : Container(),
                more
                    ? cardDetailRow(" Account Created", Icons.timer_outlined,
                        "22-09-2024", Colors.grey.shade200)
                    : Container(),
              ],
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              setState(() {
                more = !more;
              });
              // Button action
            },
            style: ElevatedButton.styleFrom(
              side: BorderSide(color: Colors.grey.shade200),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20), // Set the rounded corners here
              ),
            ),
            child: Text(
              more ? "- Show Less" : "+ Show More",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffff9966), Color(0xffff5e62)]),
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Subscribed to",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "Premium",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20),
                      ),
                    ]),
              ),
              Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Subscribed on",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "N/A",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20),
                      ),
                    ]),
              )
            ],
          )
        ],
      ), //main col ===========================================================
    );
  }
}

class cardDetailRow extends StatelessWidget {
  cardDetailRow(this.type, this.icon, this.val, this.clr);

  final String type;
  final IconData icon;
  final String val;
  final Color clr;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Container(
          decoration: BoxDecoration(
              color: clr,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 50,
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(width: 10),
              Icon(icon),
              Text(
                type,
                textScaler: TextScaler.linear(1.2),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      val,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: val == "Not Currently Set"
                              ? Colors.red
                              : Colors.black),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
