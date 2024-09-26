import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class dashBoard extends StatelessWidget {
  const dashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          child: Text(
            'Dashboard',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                letterSpacing: 2),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: 15),
          alignment: Alignment.centerLeft,
          child: Text(
            'Your Friend',
            style: TextStyle(
                fontSize: 18,
                color: Colors.purple,
                fontWeight: FontWeight.w700,
                letterSpacing: 1),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Card(
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
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
                                child: Center(
                                    child: CircularProgressIndicator()));
                          },
                        ),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 15),
                                Icon(
                                  Icons.fiber_manual_record_rounded,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Rahim Perdesi',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.purple,
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15),
                                Icon(
                                  Icons.location_on,
                                  color: Colors.blue,
                                  size: 27,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Bilal Street, Sui gas road,\nGujranwala',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.purple,
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 60),
                      Flexible(
                        child: Column(
                          children: [
                            Text(
                              'Status',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Offline',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      SizedBox(
                        height: 30,
                        width: 2,
                        child: Container(
                          color: Colors.deepPurple,
                        ),
                      ),
                      SizedBox(width: 15),
                      Flexible(
                        child: Column(
                          children: [
                            Text(
                              'User Status',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'NA',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      SizedBox(
                        height: 30,
                        width: 2,
                        child: Container(
                          color: Colors.deepPurple,
                        ),
                      ),
                      SizedBox(width: 15),
                      Flexible(
                        child: Column(
                          children: [
                            Text(
                              'Mood NA',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        dashboard_gradient_feature()
      ],
    );
  }

  Container dashboard_gradient_feature() {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 3.0),
            blurRadius: 3.0,
          )
        ],
        gradient: LinearGradient(
          colors: [Color(0xff4FC174), Color(0xff00D7A9)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.phone_android),
            Flexible(
                child: Text(
              'Device Info',
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
