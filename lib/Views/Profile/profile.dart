import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        )
      ],
    );
  }
}

class cardDetailRow extends StatelessWidget {
  cardDetailRow(this.type, this.icon, this.val, this.clr);

  final String type;
  final Icon icon;
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
              icon,
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
                          color: val == "Not Currently set"
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
