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
                      Flexible(
                        child: Column(
                          children: [],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: [],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
